# LUT multiplier stage - 2026-11-10

Baseline: 25 native 18-bit solvers, measured 35.543 ms canonical full set.
The baseline uses 79/80 DSPs, 13,045/17,600 LUTs and 4,336/4,400 slices.
4,555 unused LUTs do not guarantee space for that many extra LUT primitives:
packing and routing must also fit.

First compare a complete native solver against a LUT-only solver. Keep Q4.14,
the three products, pipeline latency, saturation, handshake and shared classifier.
Verify zero DSPs for fabric products and check 2,048 independent model vectors
with input/output stalls. Then choose an extra-lane count from the measured cost
and route a mixed design at 100 MHz. No board timing is claimed before the user
loads a verified XSA and reports canonical f. Vitis remains under user control.

## Measured isolated cost and first physical candidate

Native: 3 DSP, 333 LUT primitives, 285 FF primitives.
Fabric: 0 DSP, 1,561 LUT primitives, 417 FF primitives.
Both have the same Q4.14 arithmetic and latency; fabric passed 2,048 model vectors
with input/output stalls. These primitive counts exclude SRLs and differ from
physical Slice LUT totals; use routed utilization for final comparisons.

Try 25 native + 2 fabric = 27 solvers. Three extra fabric solvers would already
exceed the raw 4,555-LUT remainder at isolated primitive cost (4,683), before
control overhead. Two is a candidate, not a guaranteed fit or global maximum.
Run a reduced engine oracle/protocol check with all 27 lanes exercised, then
synthesis/placement/routing at the unchanged 100 MHz. No long full-frame sim.

Build: build_precision.tcl -tclargs 27 18 repackage 2
Export: export_precision_snapshot.py --width 18 --solvers 27 --lut-solvers 2
Artifacts must use w18_d25_l2 names so they cannot be confused with all-DSP builds.

## Attempt 1: fits physically, rejected for timing

27 solvers placed/routed: 79 DSPs, 15,611 LUTs (88.70%), 16,393 registers,
11 BRAM, 4,400/4,400 occupied slices. Setup -0.618 ns; hold +0.020 ns.
No hybrid XSA was exported and this bitstream is not approved for a board run.
The root XSA still belongs to the baseline and must not be used as a hybrid XSA.
Archived evidence is in attempt1_arithmetic_arbiter/.

Worst routed path: last_reg[3] to last_reg[14]/CE in the round-robin arbiter,
73.8% routing delay. It is not a multiplier path. Retry replaces arithmetic
mask/lowest-bit carry chains with constant-range OR reductions. Grant order,
registered stages, precision, solvers and clock stay unchanged. The short engine
check now also checks every observed pick against a sequential round-robin policy.

## Final verified build: user board-measured at 33.897 ms

The prefix arbiter retry reduced LUTs to 15,366 but narrowly missed setup
(-0.077 ns; hold +0.026 ns). Evidence: attempt2_prefix_arbiter/.
Post-route phys_opt_design -directive AggressiveExplore recovered the remaining
margin without changing RTL. Final setup +0.017 ns; hold +0.026 ns.
All 30,568 routable nets are fully routed with zero routing errors. Nine
bus-skew checks pass, minimum +5.794 ns. No failing setup/hold endpoints.

Final: 79/80 DSPs, 15,366/17,600 LUTs (87.31%), 16,393/35,200 registers,
11/60 BRAM tiles, all 4,400 slices occupied. The physical per-lane check verifies
25 three-DSP native solvers and two zero-DSP fabric solvers. The shared test
accounts for the other four DSPs. This is a tested fit, not an absolute maximum.

Verified named files under ../artifacts/w18_d25_l2/:
- design_1_wrapper_w18_d25_l2.xsa
- design_1_wrapper_w18_d25_l2.bit
- manifest.json, routed reports, route status and physical lane mapping CSV.

XSA SHA256: 4198637c523551994e8a1def968fe39ea52d53a3142ebafa8a738153ce33d742
XSA metadata: SOLVER_W=18, NSOLV=27, LUT_SOLVERS=2.
Embedded .bit matches the implemented/named .bit. Format register 0x4d420e12.
User canonical f: **33.897 ms (3,389,695 clocks)**, 27 of 27 solvers,
centre (-0.75,0), step 18641, max_iter 1000, STATUS 0x2.
Raw UART, CSV and JSON are saved in this directory. This is 1.64608 ms
(about 4.63%) less render time than the 25-solver 35.54303 ms measurement.
No sweep or precision banner was supplied; visual deep-zoom validation remains separate.

Reproduce in this checkout, from the repository root (Vivado 2024.1):
1. Build via scripts/build_precision.tcl -tclargs 27 18 repackage 2.
   The recorded default implementation narrowly fails timing; keep its reports.
2. Run scripts/finish_hybrid_physopt.tcl to apply post-route optimization,
   gate setup/hold and 79 DSPs, then regenerate bitstream/reports/XSA.
3. Run scripts/verify_hybrid_route.tcl for complete routing and physical lane checks.
4. Run scripts/export_precision_snapshot.py --width 18 --solvers 27 --lut-solvers 2.
Paths above are under Lab2_Workstation/Mandelbrot_hdmi; use Vivado batch mode
for Tcl scripts. Export refuses mismatched metadata/bitstreams or failing checks.
Do not overwrite frozen files with another build; preserve each result separately.

User's manual Vitis run:
1. Update the existing platform's hardware specification to the named XSA.
2. Build the platform and application in Vitis Classic.
3. Explicitly select the matching named .bit in the run configuration.
4. Confirm 27 built solvers (25 native + two fabric), 18 bits / Q4.14.
5. Select all 27, max_iter 1000 and f. Save clocks, milliseconds and STATUS.
No sweep or repeated long simulation is required. User controls Vitis/COM5.

The raw isolated primitive estimate suggested trying two fabric lanes; it is
not a physical area bound. The routed area increase differs because LUT packing,
shared/control logic and optimization differ. A third lane or spending the last
DSP on one product are future experiments, not proven impossible or implemented.
