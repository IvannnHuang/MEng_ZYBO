# Current Mandelbrot experiment - 2026-11-10

**27 solvers (25 DSP-backed + two LUT-backed), 18-bit Q4.14: ready for user board run.**
Checkout: C:/Users/zk67/zybo-hybrid18
Branch: solver-hybrid18. Hardware main remains unchanged.

Use these verified, uniquely named files:
C:/Users/zk67/zybo-hybrid18/Lab2_Workstation/precision/artifacts/w18_d25_l2/design_1_wrapper_w18_d25_l2.xsa
C:/Users/zk67/zybo-hybrid18/Lab2_Workstation/precision/artifacts/w18_d25_l2/design_1_wrapper_w18_d25_l2.bit
XSA SHA256: 4198637c523551994e8a1def968fe39ea52d53a3142ebafa8a738153ce33d742
XSA metadata verifies 18-bit, 27 total, two fabric solvers; embedded bitstream matches.

## Verified result

79/80 DSPs, 15,366/17,600 LUTs, 16,393 registers, 11 BRAM tiles,
4,400/4,400 occupied slices. Setup/hold +0.017/+0.026 ns at 100 MHz.
Nine bus-skew constraints pass, minimum +5.794 ns. All 30,568 routable nets
are fully routed, zero routing errors. Per-lane checks prove the two added
fabric solvers use zero DSPs; the original 25 use three each. Shared test: four.

LUT solver: 2,048 independent model vectors passed with input/output stalls.
Mixed short engine: all 8,192 model counts and output protocol pass under
AXI backpressure; all 27 lanes exercised; round-robin policy monitor passes.
No repeated long full-frame simulation. No mixed-design board timing yet.

## User's next run

In Vitis Classic, update hardware specification to the named XSA, build platform
and app, and explicitly choose the matching named .bit in the run configuration.
Check 27 built/active solvers and 18-bit Q4.14 (format 0x4d420e12; min step 512).
Set max_iter 1000 and f: centre (-0.75,0), step 18641, zoom 1.
Paste one result showing 27 of 27, exact clocks, ms and STATUS. Sweeps are optional.
User operates Vitis and COM5; agent does not import projects or program/run board.
The precision-aware reference mandel.c is in this checkout for manual GUI use.

## Saved measurements

- 25 x 18-bit, solver-18-n25 at 0d3043b: **35.543 ms**, 3,554,303 clocks,
  canonical view, STATUS 0x2. 79 DSPs, 13,045 LUTs; setup/hold +0.262/+0.024 ns.
  Named XSA/.bit in C:/Users/zk67/zybo-18-n25/Lab2_Workstation/precision/artifacts/w18_n25/.
- 10 x 24-bit, solver-24-n10 at 6df2bae: **76.869 ms**, 7,686,944 clocks,
  canonical view. 64 DSPs / 8,666 LUTs; setup/hold +0.601/+0.019 ns.

## What changed and why

Products can use fabric with identical precision and pipeline latency.
Attempt 1 fitted but failed setup at -0.618 ns in the round-robin arbiter.
Parallel OR reductions preserve grant order and remove arithmetic selection
chains. The retry missed by -0.077 ns in dispatch; post-route AggressiveExplore
recovered +0.017 ns. Failed attempts and final checks are archived under
precision/hybrid18. Isolated primitive counts are not physical Slice LUT totals.
This is the best verified mixed build tested so far, not a proof of a global maximum.
Further precision, extra-lane and partial-DSP experiments remain future options.
