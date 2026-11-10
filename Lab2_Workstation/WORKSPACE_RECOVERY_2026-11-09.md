# Vitis workspace recovery - 2026-11-09

The headless 24-bit board-preparation workflow changed the Eclipse workspace
project registration; the GUI then showed an empty Explorer and a Missing
System Project entry. The source project directories were still present.

Recovery performed at the user's request:

- Closed Vitis normally; did not force-terminate it or run a build.
- Backed up the entire current workspace outside the repository to
  `C:/Users/zk67/MEng_ZYBO_restore_backups/before_gui_restore_2026-11-09/workspace`.
- Saved the current tracked workspace changes in a Git stash on
  `solver-precision-board` before switching branches.
- Returned the working checkout to `shared-inside-set` (pre-preparation commit d395ae7).
- Restored the saved metadata and recovered the complete core-resources registry
  from 0826e76, including its matching `.root/2.tree` and `2.snap` files.
  Those files contain all three original project registrations.
- Verified that the application C source, Debug ELF, platform/export XSA and
  application launch bitstream match the pre-preparation d395ae7 files byte for byte.
- Reopened Vitis normally and visually verified that `design_1_wrapper` and the
  system/application entries are visible, with no Missing System Project entry.

No command-line build, hardware programming or board execution was performed
during this recovery. The platform can display an Out-of-date annotation with
the recovered registry; it was not rebuilt or regenerated during recovery.

The 24-bit experiment remains saved in the separate `solver-precision` checkout
and on the pushed `solver-precision-board` branch. The latest wrap-up/Amber notes
remain on that branch, and the published website was not reverted. Do not run
headless project registration or change this GUI workspace again without a
complete metadata backup and checking the visible project tree afterward.
