# References and Zybo optimization questions

## Personal discovery note, 2026-11-09

I stumbled across Bruce Land's lecture-recording resource through someone on
Reddit: [ECE 5760 Fall 2011, lecture 23](http://www.infocobuild.com/education/audio-video-courses/electronics/ECE5760-Fall2011-Cornell/lecture-23.html). The Reddit post/person
was not recorded. This link points to an Infocobuild page for the Cornell course;
do not describe Infocobuild as Bruce's own hosting site without confirmation.
The page could not be fetched by the research tool in this session, so its
individual video contents have not been verified here.

## Reviewed Cornell material

- [V. Hunter Adams: Mandelbrot lab](https://vanhunteradams.com/DE1/Mandelbrot/Mandelbrot.html)
- [Implementation background](https://vanhunteradams.com/DE1/Mandelbrot/Mandelbrot_Implementation.html)

The lab highlights multiplier limits, load balancing, dispatch/write contention,
and the precision/zoom relationship. It recommends Q4.23 for the DE1 exercises.
The background recommends keeping squares between iterations; our solver already
does that. Its private-M10K VGA approach cannot be copied directly into our larger
1080p DDR frame-buffer system. These are source observations, not measured Zybo gains.

## Experiments inferred for this Zybo design

| Experiment | Zybo-specific reason | What to record |
|---|---|---|
| Solver precision sweep, next | A Zynq DSP48E1 has a 25x18 multiplier, unlike the cited DE1 27x27 mode. Measure actual mapping at each width. | DSPs per solver, LUTs, FFs, WNS, render clocks, pixel/count differences, usable zoom |
| More solvers after precision | Eight 27-bit solvers use 72 DSPs; the shared test adds four. Narrowing may release DSPs, but LUTs and routing can become limiting. | Hold width fixed, then sweep built/active count |
| Deeper multiply pipeline and clock | The remaining slack is small; a faster clock must account for pipeline latency and coordination paths. | Setup/hold, cycles per frame and ms at the actual clock |
| Dispatcher/arbiter/DDR profiling | Faster math can expose serial bottlenecks even with burst writes. | Solver occupancy, output stalls, FIFO/row-buffer stalls, AXI traffic |
| Additional interior/periodicity checks | Potentially reduce residual work, but require a numerical correctness argument and resource accounting. | False-positive analysis, zoom behavior and incremental cost; not claimed as an Adams-page prescription |

Preserve the eight-iterator Q4.23 + shared-test board baseline: 93.442 ms,
76/80 DSPs, 11,707 LUTs, WNS +0.236 ns. The primary chart keeps the original
no-shortcut 1-8 curve and adds the shared-test result as another eight-iterator
point. Precision variants must be separate, explicitly labeled configurations.

## User-confirmed completion

USB mouse implementation is complete, including pan/zoom interaction (reported
by the user). Prior notes that only enumeration was verified are historical.

## DDR capacity versus faster rendering - question raised 2026-11-09

**Question:** "What would fill the board's 1 GiB of DDR? If one frame uses only
a small fraction, can the spare memory help load frames faster?"

The board has 1 GiB = 1,073,741,824 bytes of DDR3L on a 32-bit interface, up to
1066 MT/s. [Digilent board manual](https://digilent.com/reference/_media/reference/programmable-logic/zybo-z7/zybo-z7_rm.pdf).

Calculations for our current packed RGB888 format:

| Item | Bytes | MiB / implication |
|---|---:|---|
| One 1920 x 1080 x 3-byte frame | 6,220,800 | 5.9326 MiB; about 0.579% of total DDR |
| Four allocated application frame buffers | 24,883,200 | 23.7305 MiB; about 2.32% |
| 172 raw frames | 1,069,977,600 | Theoretical full-DDR limit; 3,764,224 bytes remain |
| 173 raw frames | 1,076,198,400 | Exceeds 1 GiB |

The 172-frame figure is an upper bound before application code/data, stack,
heap, memory reservations, alignment and other users. It is not an available
frame count to allocate blindly. The application already declares
`frameBuf[DISPLAY_NUM_FRAMES][DEMO_MAX_FRAME]`; `DISPLAY_NUM_FRAMES` is 4.
The linker DDR region starts at 0x00100000 and has length 0x3ff00000, and also
contains the application sections. These are source observations, not a
measurement of remaining free DDR.

**Capacity stores images; bandwidth moves them; solvers compute new images.**
Allocating more DDR does not make the current Mandelbrot arithmetic execute
faster or increase the DDR data bus speed.

Useful experiments, to implement later:

- **Double/triple buffering:** display one completed frame while rendering into
  another, then switch at a safe frame boundary. This can avoid tearing and
  improve presentation without reducing the raw per-frame compute time. The
  current Mandelbrot path selects frame 0 and renders into it; allocating four
  buffers alone is not a completed asynchronous swapping scheme.
- **Cache completed views / pre-render an animation:** reuse a frame without
  recomputing it. At 60 Hz, even 172 raw frames represent only about 2.87 seconds;
  the real buffer budget is smaller. New uncached view coordinates still need
  rendering. AXI VDMA frame-store limits may require software to rotate cached
  DDR addresses rather than configuring every cached image as a hardware slot.
- **Cache iteration counts:** a 16-bit count map is 4,147,200 bytes at 1080p.
  It could support recolouring a cached view without re-iterating, but requires
  another data format/path; changing the view or max_iter can require recompute.
- **Profile the current memory path first:** count AXI AW/W stalls, burst response
  waits and row-window blockage. Then consider burst scheduling, buffering or
  overlapping work if memory traffic is actually limiting.

At 60 Hz the active-pixel display reads alone are about 373.25 MB/s. A
6.22 MB render completed in 91.130 ms averages about 68.3 MB/s of framebuffer
writes. Those averages do not prove the writer never stalls. The theoretical
maximum 1066 MT/s x 4-byte DDR bus is about 4.26 GB/s before overhead and competing
traffic; it is not a measured project bandwidth.

Before a buffering experiment, inspect display-frame ownership, cache maintenance,
safe swapping and the configured VDMA frame-store count. Keep changes to the
memory path separate from the immediate 18-bit and solver-count experiments.
Hardware background: [AMD AXI VDMA PG020](https://docs.amd.com/api/khub/documents/GT3z0bLg0JcRiVJtfHPjVQ/content).

Immediate DSP-build handoff:
[NEXT_DSP_EXPERIMENTS.md](NEXT_DSP_EXPERIMENTS.md).
The latest 24-bit board excerpt is 91.130 ms at a shifted x1 viewport; the
canonical centre (-0.75, 0) measurement remains pending.


18-bit follow-up: eight-solvers Q4.14 is now built (28 DSPs, 7,740 LUTs, WNS +0.479 ns) and user board-measured at **93.522 ms** on the canonical view. Exact data and the next-build roadmap are linked from NEXT_DSP_EXPERIMENTS.md. DDR buffering ideas above remain proposed, not implemented.
