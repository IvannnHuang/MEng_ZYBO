# Mandelbrot progress record - 2026-11-10

**Session saved. Hardware testing is on hold at the user's request.**
Latest board result: **33.897 ms / 3,389,695 clocks**, 27 solvers at 18 bits.
Next experiments: [MANDELBROT_NEXT_STEPS_2026-11-10.md](MANDELBROT_NEXT_STEPS_2026-11-10.md).
Goal: understand the Zybo Z7-10's capabilities and tradeoffs, rather than match DE1 timings.

## Measured progression

| Configuration | Solvers | DSPs / 80 | Routed LUTs / 17,600 | Setup slack ns | Board ms |
|---|---:|---:|---:|---:|---:|
| Original, HDMI input included, 27-bit | 4 | 36 | 11,623 | +0.255 | 792.2 |
| HDMI input removed, 27-bit | 4 | 36 | 8,187 | +0.223 | 792.2 |
| Pipelined engine, 27-bit | 8 | 72 | 11,267 | +0.147 | 399.4 |
| Shared cardioid / bulb test, 27-bit | 8 | 76 | 11,707 | +0.236 | 93.442 |
| 24-bit Q4.20, shared test | 8 | 52 | 7,970 | +0.318 | 91.130 (shifted view) |
| 18-bit Q4.14, shared test | 8 | 28 | 7,740 | +0.479 | 93.522 |
| 24-bit Q4.20, shared test | 10 | 64 | 8,666 | +0.601 | 76.869 |
| 18-bit Q4.14, shared test | 25 | 79 | 13,045 | +0.262 | 35.543 |
| 18-bit, 25 DSP-backed + 2 LUT-backed, shared test | **27** | **79** | **15,366** | **+0.017** | **33.897** |

The shifted 24-bit eight-solver capture is separate from canonical comparisons.
The original no-classifier 1-8 sweep remains preserved; eight without the test
is 399.400 ms and eight with the test is a separate 93.442 ms point.
The early unpipelined eight-solver attempt failed timing (-0.731 ns); its
399.9 ms observation is not an accepted timing-closed benchmark.

Canonical conditions: 1920x1080, 100 MHz engine, max_iter 1000, centre (-0.75,0),
zoom 1, Q4.23 coordinate step 18641. The user runs Vitis Classic and COM5.
27-solver capture: 27 of 27, STATUS 0x2, x [-2.8832931519,1.3810709715],
y [-1.1977552176,1.1999773979]. Exact time is 33.89695 ms, displayed 33.897.
25-solver capture: 3,554,303 clocks. Mixed build saves 164,608 clocks / 1.64608 ms
(4.63% less render time). Cost: +2,321 LUTs / +786 registers, unchanged DSP/BRAM.
The comparison includes the arbiter rewrite used by the mixed build.

## What changed

- HDMI-input removal changed the block design: saved 3,436 LUTs, 6,063 FFs,
  seven BRAM tiles and one MMCM; no DSP saving or render-time change.
- Four to eight solvers exposed dispatch/output timing paths. Registered input
  buffers and pipelined arbitration closed timing.
- One shared conservative cardioid / period-2 bulb test skips known interiors;
  uncertain pixels still iterate. Its four DSPs greatly reduce the work.
- Narrower solver arithmetic frees DSPs: three products per solver cost nine
  DSPs at 27 bits, six at 24 bits, three at 18 bits. Coordinates remain Q4.23.
- Ten 24-bit and directly 25 18-bit solvers were built; intermediate counts were
  skipped at the user's request. 25*3+4 = 79 DSPs, so another native lane exceeds 80.
- Two added 18-bit solvers use LUT products and zero DSPs. Precision and pipeline
  latency stay the same. The first mixed build fitted but failed at -0.618 ns
  in round-robin selection. Parallel OR reductions improved it to -0.077 ns;
  post-route AggressiveExplore recovered +0.017 ns setup / +0.026 ns hold.
- USB mouse pan/click-to-zoom is complete. User handles Vitis and board runs;
  no agent imports or rebuilds their GUI workspace.

Final mixed use: 79 DSPs, 15,366 LUTs (87.31%), 16,393 registers (46.57%),
11/60 BRAM tiles, all 4,400 slices occupied. Nine bus-skew checks pass;
minimum +5.794 ns. All 30,568 routable nets are routed with zero routing errors.
All occupied slices does not mean every LUT/FF in them is used.

Validation already completed: 2,048 independent fabric-solver vectors with
stalls; reduced engine checked all 8,192 pixel counts/output protocol under
AXI backpressure, exercised every lane, and checked round-robin order.
No repeated long full-frame simulation was run for 25/27 lanes. Board captures
supply full-set timing; visual/deep-zoom quality remains a separate question.

## How large is a LUT multiplier?

Saved isolated synthesis, W=18, F=14, Vivado 2024.1, XC7Z010:

| Complete solver implementation | Slice LUTs after combining | LUT primitives | FFs | DSPs |
|---|---:|---:|---:|---:|
| DSP products | 310 (235 logic + 75 SRL) | 333 | 285 | 3 |
| Fabric products | **1,251 (1,176 logic + 75 SRL)** | **1,561** | **417** | **0** |

Each solver has two 18x18 squares and one 18x18 cross-product, plus its state,
arithmetic, input/output buffering and pipeline. 1,251 is the complete solver's
Slice LUT estimate; 1,561 counts primitives before combining and excludes SRL
primitives. Use Slice LUT figures against the device's 17,600 Slice LUT budget.

Moving the three products from DSPs into fabric adds 1,251-310 = 941 Slice LUTs
and 132 FFs. **941/3 = about 314 extra Slice LUTs per product on average**.
This is a derived comparison, not a standalone multiplier measurement: squares
and cross-products can have different costs, and register/optimization choices
also change. An exact single-product cost needs a separate future synthesis.

## Theoretical capacity, with no DSP-backed solver products

These area estimates replace the solver bank and use the full-chip LUT budget.
They are not extra lanes available beside the existing 27. None is a routed build.

| Assumptions | Arithmetic | Estimate |
|---|---|---:|
| Product-equivalents only; ignore every other circuit | floor(17,600 / (941/3)) | about 56 products |
| Complete LUT solvers only; ignore HDMI/AXI/dispatch/classifier | floor(17,600 / 1,251) | **14 solvers / 42 products** |
| Keep current support and DSP classifier; replace native solver bank | floor((17,600-5,195)/1,251) | **about 9 fabric solvers; classifier still uses 4 DSPs** |
| Strict zero DSP sketch; bypass classifier and use fabric solver bank | floor((17,600-4,860)/1,251) | **about 10 solvers / 30 products** |
| Strict zero DSP while keeping a fabric version of the classifier | Classifier's fabric cost not measured | unknown |

Derivation from the saved 25-solver routed hierarchy: native solver instances
sum to 7,850 LUTs; total 13,045 leaves 5,195 for everything else. The classifier
is 335 LUTs / four DSPs; removing it leaves an illustrative 4,860-LUT support
allowance. Support logic changes with solver count, and bypass wiring has a
cost, so these are estimates rather than hard limits. Bypassing the classifier
makes interior pixels do their full iterations again, so timing is not predicted.
LUT combining, SRLs, carry chains, packing and routing can further change fit.
The only measured LUT-enhanced whole system here is the 27-solver hybrid.

## Why DDR and dispatch? Plain language

The dispatcher is the person handing out pixel jobs. A pixel can take a few
iterations or up to 1,000, so the first available solver takes the next job.
This keeps other solvers working when one gets a difficult pixel.

Finished jobs carry their x/y address. A small on-chip row buffer puts their
results into the right places. The writer sends finished data to DDR in
128-byte batches through AXI HP0. It waits when the memory path is busy; the
row window eventually holds back new jobs until space is available.
VDMA reads the saved frame from DDR in screen order and feeds HDMI.
The dispatcher assigns computation; the writer handles memory transfers.

| Earlier M10K framebuffer approach | This Zybo DDR approach |
|---|---|
| Image stored in RAM blocks inside the FPGA | Full image stored in external DDR; working rows stay in BRAM |
| Solver writes a pixel address; VGA reads the image through RAM ports/banks | Solvers finish out of order; row buffer reorders; AXI writes batches; VDMA reads for HDMI |
| Reference VGA image: 640x480 x 1 byte = 307,200 bytes | Current HDMI image: 1920x1080 x 3 bytes = 6,220,800 bytes |
| On-chip ports offer direct, predictable access; capacity is limited | DDR offers much more capacity; controller/AXI sharing introduces waits |

The Zybo has at most 270 KiB of PL block RAM including parity bits. Its stored
1080p RGB888 frame is 5.93 MiB, over 22 times that amount, so the full frame
belongs in DDR. Even one byte per 1080p pixel exceeds that on-chip budget.
The 1 GiB DDR holds the frame comfortably. More allocated DDR increases storage;
it does not increase solver arithmetic speed or memory bandwidth.

M10K is Intel's on-chip RAM type; BRAM is the corresponding Xilinx resource.
Dynamic job allocation and the choice of framebuffer memory are separate:
an M10K-based design can also use a first-free dispatcher. The animation shows
one earlier interleaved assignment example, not a restriction of the DE1 board.
See [M10K definition](https://resources.altera.com/quartushelp/18.0/reference/glossary/def_m10k.htm)
and [the reference VGA driver](https://vanhunteradams.com/DE1/VGA_Driver/Driver.html).

## Saved branches, hardware and detailed evidence

| Stage | Branch / checkpoint | Records under Lab2_Workstation |
|---|---|---|
| Eight 24-bit solvers | solver-precision / 693423a | precision/artifacts/w24_n8 |
| Eight 18-bit solvers | solver-native18 / 319f9f9 | precision/artifacts/w18_n8 |
| Ten 24-bit solvers | solver-24-n10 / 6df2bae | precision/w24_n10 and precision/artifacts/w24_n10 |
| Twenty-five 18-bit solvers | solver-18-n25 / 0d3043b | precision/w18_n25 and precision/artifacts/w18_n25 |
| Mixed 27 solvers, measured | solver-hybrid18 / 258e5f4 | precision/hybrid18 and precision/artifacts/w18_d25_l2 |

The last folder contains uniquely named design_1_wrapper_w18_d25_l2.xsa/.bit,
reports, mapping CSV and manifest. SHA256 of the XSA:
4198637c523551994e8a1def968fe39ea52d53a3142ebafa8a738153ce33d742.
Binary hashes remain unchanged when recording board results.
[Raw mixed result](https://github.com/IvannnHuang/MEng_ZYBO/blob/258e5f4/Lab2_Workstation/precision/hybrid18/board_results.json).
[Detailed optimization log and Verilog diffs](https://github.com/IvannnHuang/MEng_ZYBO/blob/shared-inside-set/Lab2_Workstation/OPTIMIZATION_LOG.md).
[Saved solver reports](https://github.com/IvannnHuang/MEng_ZYBO/tree/solver-hybrid18/Lab2_Workstation/precision/hybrid18).
Calculation details are saved as precision/LUT_CAPACITY_REFERENCE_2026-11-10.json
in the documentation branch; no new hardware synthesis was performed.

Precision changes numerical detail and useful zoom, while output stays 1080p.
Q4.14 has a nominal sampling zoom limit around 36x; it is not an accuracy guarantee.
Other pending topics: DDR frame buffering/caching, matched boundary screenshots,
and Amber's suggestion to explain Lab 1 C code and turn it into reusable student
functions (or agreed C++ classes). These are recorded, not implemented.
The Bruce Land lecture-recording page was found through someone on Reddit:
[lecture 23](http://www.infocobuild.com/education/audio-video-courses/electronics/ECE5760-Fall2011-Cornell/lecture-23.html).
The optimization references include
[V. Hunter Adams's Mandelbrot lab](https://vanhunteradams.com/DE1/Mandelbrot/Mandelbrot.html)
and its [implementation notes](https://vanhunteradams.com/DE1/Mandelbrot/Mandelbrot_Implementation.html).
