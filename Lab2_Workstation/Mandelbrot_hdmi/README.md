# Mandelbrot on Zybo Z7 — Week 1 (1920×1080)

Goal of Week 1: one synthesizable complex-iterator pipeline, simulated, with iteration counts
that match the Python reference, tested at many points.

## Files
| File | Purpose |
|---|---|
| `mandel_ref.py` | Float reference (lab's Python), **bit-exact fixed-point model** of the Verilog, pixel→c mapping for 1920×1080, test-vector generator |
| `mandel_iter.v` | The iterator (1 iteration/clock, 3 multipliers, saved squares, saturating products) |
| `tb_mandel_iter.v` | Self-checking testbench, reads `vectors.txt` |
| `vectors.txt` | 687 vectors: `cr ci max_iter expected_count` (hex) |
| `view_check.py` | Checks the 1920×1080 view frames the whole set; estimates frame workload |

## Run
```
python3 mandel_ref.py vectors.txt                      # regenerate vectors
iverilog -g2005 -o sim.vvp mandel_iter.v tb_mandel_iter.v && vvp sim.vvp
```
In Vivado: add `mandel_iter.v` as a design source and `tb_mandel_iter.v` as a simulation source
(copy `vectors.txt` into the xsim run directory, or give `$fopen` an absolute path).

## Design decisions
* **Format Q4.23** (27 bit: sign + 3 int + 23 frac), range [-8, 8), as the lab suggests. `W`/`F` are parameters.
* **Per iteration:** `zr' = zr2 − zi2 + cr`, `zi' = 2·zrzi + ci`, then `zr2' = zr'²`, `zi2' = zi'²`, `zrzi' = zr'·zi'`; escape if `zr2'+zi2' > 4`. Only 3 multipliers.
* **Products are floored (>>>F) and saturated.** Squares of |z|≈6 overflow ±8; saturation keeps them >4, so the escape test is still right and the iteration stops that cycle.
* **Count convention = lab Python:** incremented before the update; result in [1, max_iter]; `== max_iter` means inside the set.
* **Pixel mapping:** `c = c0 + px·step` using integer step accumulation (no multiplier needed later). Full view: centre (−0.75, 0), step 2.4/1080 → x∈[−2.883, 1.383], y∈[−1.2, 1.2] (square pixels, whole set fits).

## Results
* 687/687 vectors bit-exact vs. the fixed-point model (127 in-set points, 20 hand-picked, grid samples of the real 1920×1080 view incl. corners, a zoomed view, random points in [-3,3]², and short `max_iter` limits).
* Mutation check: a wrong sign (263 fails) and removing saturation (164 fails) are both caught.
* Same RTL also passes at Q4.28 (W=32) with a regenerated model.
* Fixed vs. float differ on 8/687 points, all chaotic boundary points (up to ~400 iterations apart). That is the precision effect, not a bug; the lab says the Verilog should match the model of the *same* arithmetic.
* Frame workload at max_iter=1000: ~152 iterations/pixel average → **~3.2×10⁸ iterations per full 1920×1080 frame**. At 1 iteration/clock per pipeline at 100 MHz, a frame takes about 3.2 s / N for N perfectly balanced pipelines (N=20 → ~160 ms). This is the number the pipeline-count scaling in Week 3 will beat.

## Zybo issues to settle before Week 2
1. **DSP48E1 is 25×18 signed.** A 27×27 multiply costs ~4 DSPs (tile 2×2) so 3 multiplies ≈ 12 DSPs/pipeline: Z7-10 (80 DSP) → ~6 pipelines, Z7-20 (220) → ~18. Narrowing hurts zoom depth (1 bit = 1 zoom level; 1920 px uses 11 bits).
2. **The loop is one combinational add→multiply→compare path per clock.** Likely ~100 MHz or below on Zybo. Pipelining the loop and interleaving several points per pipeline fixes this without losing throughput. Do it in Week 2.
3. **Framebuffer:** 1920×1080 doesn't fit in BRAM (even 4 bpp ≈ 8.3 Mb vs 2.1 Mb Z7-10 / 4.9 Mb Z7-20). It has to live in DDR via AXI VDMA, so the "one BRAM per solver" scheme from the original lab won't work at this resolution.
4. **1080p60 HDMI needs a 148.5 MHz pixel clock** (742.5 MHz serial), which is tight on the Zybo's rgb2dvi; confirm 1080p works on your board/monitor (1080p30 or 720p as fallback).
5. **Not done yet (Week 1 item):** run and time the ARM-only Mandelbrot baseline on the Zynq PS.
