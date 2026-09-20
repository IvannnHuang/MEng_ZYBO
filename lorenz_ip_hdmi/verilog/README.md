# Lorenz IP - HDL reference copy

This folder is a curated, read-only copy of just the Verilog/SystemVerilog
that matters for the Lorenz-attractor AXI-Lite peripheral, pulled out of
`ip_repo/lorenz_reader_1_0/hdl/` so it's easy to read without wading through
`xgui/`, `drivers/`, `example_designs/`, and `bd/` (which are all untouched
Vivado wizard boilerplate - see below).

**The canonical, build-relevant source is still `ip_repo/lorenz_reader_1_0/hdl/`.**
Editing files here has no effect on the packaged IP or on synthesis - this
copy exists purely for reading and for documentation. If you change the real
IP later, re-copy the files here to keep this folder in sync.

## Files

| File | What it is |
|---|---|
| `signed_mult.v` | Fully custom. Q7.20 signed fixed-point multiplier. |
| `integrator.sv` | Fully custom. One-tap Euler integrator (`v[n+1] = v[n] + funct`, resets to `InitialOut`). |
| `solver.sv` | Fully custom. Wires 3x `integrator` + 3x `signed_mult` into the Lorenz equations (dx = σ(y−x), dy = x(ρ−z)−y, dz = xy−βz). No AXI awareness at all - just a free-running numeric core. |
| `lorenz_reader.v` | Vivado AXI4-peripheral wizard **template, edited**. Top-level IP wrapper. |
| `lorenz_reader_slave_lite_v1_0_S00_AXI.v` | Vivado AXI4-peripheral wizard **template, edited**. The AXI-Lite register interface. |

The `.v`/`.sv` files themselves are annotated in place with
`>>> USER EDIT <<<` comment blocks marking exactly what was added and where,
so you can diff them mentally against a fresh wizard-generated file.

## What the raw, unedited template looks like

`lorenz_ip_hdmi/fpga_hdmi_custom/ip_repo/down_counter_1_0/hdl/` has an earlier,
much simpler practice IP built with the same wizard. Its top-level file
(`down_counter.v`) is **100% untouched** stock output - no custom ports, no
custom logic, nothing. Its AXI slave file
(`down_counter_slave_lite_v1_0_S00_AXI.v`) has exactly one edit: the
`S_AXI_RDATA` read-mux returns a free-running down-counter register instead
of the stock `slv_reg0`. That one IP is the cleanest possible "template plus
one edit" reference - compare it side by side with `lorenz_reader` to see the
wizard boilerplate falls away identically in both.

## Where and how the template was actually edited

### 1. `lorenz_reader.v` (top-level wrapper)

- The wizard gives you a marked slot at the very bottom:
  ```verilog
  // Add user logic here

  // User logic ends
  ```
  **This slot was left empty.** All custom code was instead inserted earlier
  in the module body, directly after the AXI port list closes (`);`) and
  before the AXI submodule instantiation - because the custom logic
  (`solver`) needs to exist *before* its outputs (`x_next`/`y_next`/`z_next`)
  can be wired into that submodule instantiation.
- What was added there: the Lorenz constants (σ, ρ, β, dt, x₀, y₀, z₀ in
  Q7.20 fixed point), a 2048-cycle restart counter (works around fixed-point
  drift-to-zero in an unsupervised Euler integrator), and one instance of
  `solver`.
- The AXI submodule instantiation itself also needed a manual edit: the
  stock instantiation only wires up the 21 standard `S_AXI_*` ports. Three
  more connections (`.x_next(x_next)`, `.y_next(y_next)`, `.z_next(z_next)`)
  had to be added by hand, because the submodule below gained 3 custom
  ports. **Whenever you add a custom port to the AXI submodule, you must
  also add the matching connection here.**

### 2. `lorenz_reader_slave_lite_v1_0_S00_AXI.v` (AXI-Lite register interface)

- The wizard's one clearly-marked customization point for *ports* is:
  ```verilog
  // Users to add ports here

  // User ports ends
  ```
  This is exactly where the 3 custom ports (`x_next`, `y_next`, `z_next`,
  each `signed [26:0]`) were added. This is the one spot in the port list
  you're meant to touch.
- A register-capture block (`x_reg`/`y_reg`/`z_reg`, latched every clock
  from `x_next`/`y_next`/`z_next`) was inserted in the module body, right
  after the stock register declarations and before the stock AXI I/O
  assignments. Not a marked slot - just a natural insertion point.
- **The important gotcha:** the actual register-read behavior is controlled
  by a single `assign S_AXI_RDATA = ...` ternary chain that sits *above* the
  wizard's `// Add user logic here` marker, not inside any marked slot at
  all. The stock version reads `slv_reg0`/`slv_reg1`/`slv_reg2`/`slv_reg3`
  for the 4 register addresses; it had to be hand-edited in place to return
  `x_reg`/`y_reg`/`z_reg` (sign-extended from 27 to 32 bits) for addresses
  0x0/0x4/0x8, leaving only `slv_reg3` (0xC) as the original unused scratch
  register. **This is the one edit that's easy to miss** if you only look
  for the wizard's marked comment blocks - `down_counter`'s AXI slave file
  has the identical gotcha at the identical location.
- The wizard's own `// Add user logic here` slot at the very end of this
  file, like in `lorenz_reader.v`, was left empty.

## Recipe: adding a new custom register-mapped AXI-Lite IP

Generalizing the pattern above, to reproduce this for a new IP:

1. Write your custom logic as plain HDL source(s) first, with a clean
   port list (clock, reset, and whatever outputs your logic produces).
   Add them as normal design sources in a Vivado project.
2. Tools -> Create and Package New IP -> "Create a new AXI4 peripheral."
   Keep the Lite interface, and pick enough registers (address width) to
   cover what you need. **Get the IP name right at creation time** - if you
   rename it afterward, the top-level file/module gets renamed but the
   AXI slave submodule filename does not, leaving a naming mismatch (this
   happened here: `lorenz_reader.v` wraps
   `lorenz_reader_slave_lite_v1_0_S00_AXI.v`).
3. In the AXI slave file (`<ip>_slave_lite_v1_0_S00_AXI.v`), add ports for
   your logic's outputs in the `// Users to add ports here` slot.
4. In the same file, edit the `assign S_AXI_RDATA = ...` line (just above
   `// Add user logic here`) to return your signals for the register
   addresses you want them at, instead of the stock `slv_regN`.
5. In the top-level wrapper (`<ip>.v`), instantiate your custom logic
   (wherever makes sense in the module body - it doesn't have to be inside
   the marked slot), then add the extra port connections to the AXI
   submodule instantiation to wire your logic's outputs through.
6. Package IP -> File Groups -> "Merge changes from File Groups Wizard" (or
   re-run the packaging steps) to regenerate `component.xml` with the new
   ports/files.
7. Leave `xgui/`, `drivers/`, `example_designs/`, and `bd/bd.tcl` alone
   unless you actually need custom GUI widgets or a hand-written driver API
   - by default they stay stock wizard output and that's fine; note that
   the stock driver files will *not* know about your new registers unless
   you hand-edit them (this was never done for `lorenz_reader` - software
   reads the registers directly rather than through a driver API).
