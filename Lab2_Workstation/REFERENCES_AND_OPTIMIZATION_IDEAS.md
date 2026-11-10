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
