#!/usr/bin/env python3
"""
Small dashboard window showing:
  - Vivado bitstream generation progress (milestone-based estimate)
  - Live CPU usage
  - Live memory usage

Progress is estimated the same way as track_bitstream.sh: by counting
per-IP synthesis completion markers, then watching for the top-level
synth/opt/place/route/bitstream checkpoint files. Vivado does not expose
a true numeric percentage for the overall flow, so this is a coarse,
milestone-based estimate, not an exact reading.
"""

import glob
import os
import tkinter as tk
from tkinter import ttk

import psutil

RUNS_DIR = "/home/zkarim28/fpga_hdmi_custom/Zybo-Z7-HW/Zybo-Z7-HW.runs"
TOP = "design_1_wrapper"
SYNTH_DIR = os.path.join(RUNS_DIR, "synth_1")
IMPL_DIR = os.path.join(RUNS_DIR, "impl_1")

IP_SYNTH_END = 20
TOP_SYNTH_END = 30
OPT_END = 45
PLACE_END = 60
ROUTE_END = 90
BIT_END = 100

REFRESH_MS = 2000


def check_for_errors():
    logs = [os.path.join(SYNTH_DIR, "runme.log"), os.path.join(IMPL_DIR, "runme.log")]
    logs += glob.glob(os.path.join(RUNS_DIR, "design_1_*_synth_1", "runme.log"))
    for log in logs:
        if not os.path.isfile(log):
            continue
        try:
            with open(log, "r", errors="ignore") as f:
                for line in f:
                    if line.startswith("ERROR:"):
                        return log, line.strip()
        except OSError:
            continue
    return None, None


def compute_progress():
    bit_path = os.path.join(IMPL_DIR, f"{TOP}.bit")
    routed_path = os.path.join(IMPL_DIR, f"{TOP}_routed.dcp")
    placed_path = os.path.join(IMPL_DIR, f"{TOP}_placed.dcp")
    opt_path = os.path.join(IMPL_DIR, f"{TOP}_opt.dcp")
    top_synth_path = os.path.join(SYNTH_DIR, f"{TOP}.dcp")

    if os.path.isfile(bit_path):
        return BIT_END, "Bitstream written - done!"
    if os.path.isfile(routed_path):
        return ROUTE_END, "Routing complete, writing bitstream..."
    if os.path.isfile(placed_path):
        return PLACE_END, "Placement complete, routing..."
    if os.path.isfile(opt_path):
        return OPT_END, "Opt complete, placing design..."
    if os.path.isfile(top_synth_path):
        return TOP_SYNTH_END, "Top-level synthesis complete, starting implementation..."

    ip_dirs = glob.glob(os.path.join(RUNS_DIR, "design_1_*_synth_1"))
    total = len(ip_dirs)
    done = sum(1 for d in ip_dirs if os.path.isfile(os.path.join(d, "__synthesis_is_complete__")))
    if total > 0:
        pct = int(done * IP_SYNTH_END / total)
        return pct, f"Synthesizing IP blocks: {done} / {total} complete"

    if os.path.isfile(os.path.join(SYNTH_DIR, "runme.log")):
        return 5, "Top-level synthesis running..."

    return 0, "Waiting for run to start..."


class Dashboard(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("Vivado Build Dashboard")
        self.geometry("420x260")
        self.resizable(False, False)

        pad = {"padx": 12, "pady": (12, 2)}

        tk.Label(self, text="Bitstream Progress", font=("Sans", 10, "bold")).pack(anchor="w", **pad)
        self.bit_label = tk.Label(self, text="Waiting for run to start...")
        self.bit_label.pack(anchor="w", padx=12)
        self.bit_bar = ttk.Progressbar(self, length=380, mode="determinate", maximum=100)
        self.bit_bar.pack(padx=12, pady=(2, 12))

        tk.Label(self, text="CPU Usage", font=("Sans", 10, "bold")).pack(anchor="w", padx=12)
        self.cpu_label = tk.Label(self, text="--%")
        self.cpu_label.pack(anchor="w", padx=12)
        self.cpu_bar = ttk.Progressbar(self, length=380, mode="determinate", maximum=100)
        self.cpu_bar.pack(padx=12, pady=(2, 12))

        tk.Label(self, text="Memory Usage", font=("Sans", 10, "bold")).pack(anchor="w", padx=12)
        self.mem_label = tk.Label(self, text="--%")
        self.mem_label.pack(anchor="w", padx=12)
        self.mem_bar = ttk.Progressbar(self, length=380, mode="determinate", maximum=100)
        self.mem_bar.pack(padx=12, pady=(2, 12))

        self.error_label = tk.Label(self, text="", fg="red", wraplength=390, justify="left")
        self.error_label.pack(anchor="w", padx=12)

        # Prime psutil's internal sample so the first real reading is meaningful
        psutil.cpu_percent(interval=None)

        self.after(200, self.refresh)

    def refresh(self):
        log, line = check_for_errors()
        if log:
            self.error_label.config(text=f"ERROR detected in {log}:\n{line}")
            self.bit_bar["value"] = 100
            self.bit_label.config(text="Build failed - see error below")
            return  # stop polling once an error is found

        pct, label = compute_progress()
        self.bit_bar["value"] = pct
        self.bit_label.config(text=f"{label} ({pct}%)")

        cpu = psutil.cpu_percent(interval=None)
        mem = psutil.virtual_memory().percent
        self.cpu_bar["value"] = cpu
        self.cpu_label.config(text=f"{cpu:.0f}%")
        self.mem_bar["value"] = mem
        self.mem_label.config(text=f"{mem:.0f}%")

        if pct >= 100:
            self.title("Vivado Build Dashboard - Done!")
            # keep the window open so CPU/memory keep updating, just stop
            # re-checking bitstream progress since it's already at 100%

        self.after(REFRESH_MS, self.refresh)


if __name__ == "__main__":
    app = Dashboard()
    app.mainloop()
