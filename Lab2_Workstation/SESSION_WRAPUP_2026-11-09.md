# Session wrap-up and next steps - 2026-11-09

## Ready for the user's board run

Current workstation branch: `solver-precision-board`, derived from the saved
`solver-precision` build. Vitis is closed. The existing platform was updated
from the 24-bit/eight-iterator XSA and regenerated; the application was imported
into the headless Vitis session and built successfully. The application's stale
launch bitstream was refreshed from the verified platform hardware.

`precision/WORKSTATION-BOARD-PREP.json` records the XSA, bitstream and ELF hashes.
The platform/export XSA and application launch bitstream agree. The executable
contains the new precision-reporting code. No board was programmed or run here.
The user reports **COM5** and will handle programming, running and collecting UART.

Reopen the existing workstation workspace in Vitis, refresh the projects and
run the application with FPGA programming enabled. Check for **Q4.20 / 24 bits /
minimum step 8 LSB / eight built solvers**, then record `f` and `b`. Check mouse
pan/zoom and boundary detail. A hardware mismatch should be resolved before timing.

## Preserve separate datasets

1. **27-bit reference dataset:** keep the existing original 1-8 iterator curve,
   399.400 ms at eight without the shared test, and 93.442 ms at eight with it.
2. **Width/board-mapping dataset:** label each width, number format, built/active
   count, shared test, clock and pipeline depth. The 24-bit/eight-solver variant
   has 52 DSPs, 7,970 LUTs, WNS +0.318 ns; simulation 93.47473 ms, **board time pending**.
3. **Future native-width dataset:** investigate 18-bit equal-width arithmetic,
   and potentially 25-by-18 mixed-width arithmetic only with a justified numerical
   design. These further variants are **not implemented in this wrap-up**.

For every dataset record DSPs, LUTs, FFs, timing slack, full-frame clocks/ms,
view coordinates, iteration limit, image/count differences and zoom limits.
Frame render time is not an isolated multiplier latency measurement. The current
solver multiplier pipeline has ML=2 register levels; keep that labeled separately.

## Why eight iterators at 27 bits, and why this is not the board's universal limit

The Zybo Z7-10 has 80 DSP48E1s; one slice's native signed multiplier is **25x18**,
with a 43-bit product. Its 48-bit arithmetic/accumulator path is not a 48x48
multiplier. Source: [AMD UG479](https://docs.amd.com/api/khub/documents/gu4oRPFEh_Pm2uaAlfY6Kg/content). The Cyclone V variable-precision block can
provide **one 27x27** or **two 18x18** multiplications: [Intel overview](https://cdrdv2-public.intel.com/666729/cv_51001-683694-666729.pdf).

Our measured Zybo mapping uses three DSPs per 27x27 product and three products
per solver: **9 DSPs/solver**. Eight use 72; nine would need 81 before the shared
test, or 85 including its four DSPs. The previous DE1 design could put its three
27x27 products into three blocks per solver: 24 solvers use 72 of its 87 blocks.
The major difference is multiplier shape and mapping, not just 80 versus 87 blocks.

A square/equal-width multiply must fit **both** input ports to fit natively into
one Zybo DSP, so 25x25 is not a one-DSP operation; 18x18 fits. The current 24-bit
experiment addresses this question partially: it reduces measured DSP use from
nine to six per solver. It is not a native one-DSP-per-product configuration.
The isolated 21-bit case uses three DSPs per solver but more LUT logic; that is a
hybrid mapping, not native 21x21 hardware. Eighteen bits is the clean equal-width
native-multiplier experiment to evaluate next, with accuracy and zoom tradeoffs.
Do not treat theoretical DSP budgets as validated feasible iterator counts.

## Amber's Lab 1 teaching idea - future work only

Amber suggested revisiting the **Lab 1 C program**, understanding what its code
and hardware interactions do, and organizing it into reusable, documented
functions students can call in class. Record the proposed API, arguments,
units, state/initialization order, hardware dependencies and small usage examples.
Review the existing display, control and peripheral code before deciding the
module boundaries. Clarify whether "class functions" means classroom helper
functions in C or actual C++ classes before choosing a language change.

This is a lab/meeting action item. **No Lab 1 C refactor, API implementation or
C++ conversion has been performed.**

## Next session, in order

- User runs the prepared 24-bit configuration on COM5 and supplies measurements.
- Record/push the board result as a separate precision configuration; keep 27-bit results intact.
- Review native 18x18 versus hybrid wider mapping; choose the next experiment with an accuracy target.
- Only after choosing/validating precision, test additional iterators and measure LUT/routing/timing limits.
- Revisit Lab 1 C with Amber and agree student-facing function boundaries; document before implementing.

Website updates: animation autoplays and loops with pause control; milestone
LUT values **11,623** (v1) and **8,187** (HDMI input removed) are emphasized.
USB mouse is complete. No further hardware optimization is being started now.
