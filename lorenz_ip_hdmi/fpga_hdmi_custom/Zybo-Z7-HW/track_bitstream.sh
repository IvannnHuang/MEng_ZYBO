#!/bin/bash
# Watches a Vivado project's run directories and shows a live progress
# window (via zenity) based on real completion markers/checkpoint files.
# This is still a milestone-based estimate overall, but the IP-synthesis
# phase now uses actual per-IP completion counts instead of a placeholder.

RUNS_DIR="/home/zkarim28/fpga_hdmi_custom/Zybo-Z7-HW/Zybo-Z7-HW.runs"
TOP="design_1_wrapper"
SYNTH_DIR="$RUNS_DIR/synth_1"
IMPL_DIR="$RUNS_DIR/impl_1"

# Phase weights (percent of the overall bar each phase occupies)
IP_SYNTH_END=20      # 0-20%: per-IP out-of-context synthesis
TOP_SYNTH_END=30     # 20-30%: top-level synthesis
OPT_END=45           # 30-45%: opt_design
PLACE_END=60         # 45-60%: place_design
ROUTE_END=90         # 60-90%: route_design
BIT_END=100          # 90-100%: write_bitstream

(
last_pct=-1
while true; do
    pct=0
    label="Waiting for run to start..."

    if [ -f "$IMPL_DIR/${TOP}.bit" ]; then
        pct=$BIT_END
        label="Bitstream written - done!"
    elif [ -f "$IMPL_DIR/${TOP}_routed.dcp" ]; then
        pct=$ROUTE_END
        label="Routing complete, writing bitstream..."
    elif [ -f "$IMPL_DIR/${TOP}_placed.dcp" ]; then
        pct=$PLACE_END
        label="Placement complete, routing..."
    elif [ -f "$IMPL_DIR/${TOP}_opt.dcp" ]; then
        pct=$OPT_END
        label="Opt complete, placing design..."
    elif [ -f "$SYNTH_DIR/${TOP}.dcp" ]; then
        pct=$TOP_SYNTH_END
        label="Top-level synthesis complete, starting implementation..."
    else
        # Count per-IP out-of-context synthesis completion markers
        total=0
        done=0
        for d in "$RUNS_DIR"/design_1_*_synth_1; do
            [ -d "$d" ] || continue
            total=$((total+1))
            if [ -f "$d/__synthesis_is_complete__" ]; then
                done=$((done+1))
            fi
        done

        if [ "$total" -gt 0 ]; then
            pct=$(( done * IP_SYNTH_END / total ))
            label="Synthesizing IP blocks: $done / $total complete"
        elif [ -f "$SYNTH_DIR/runme.log" ]; then
            pct=5
            label="Top-level synthesis running..."
        fi
    fi

    # Bail out early and loudly if any run log reports an error
    for log in "$SYNTH_DIR/runme.log" "$IMPL_DIR/runme.log" "$RUNS_DIR"/design_1_*_synth_1/runme.log; do
        if [ -f "$log" ] && grep -q "^ERROR:" "$log" 2>/dev/null; then
            echo "100"
            echo "# ERROR detected - see $log"
            zenity --error --title="Vivado build failed" \
                --text="An error was reported in:\n$log\n\n$(grep '^ERROR:' "$log" | tail -3)" \
                --width=500 2>/dev/null
            exit 1
        fi
    done

    if [ "$pct" -ne "$last_pct" ]; then
        echo "$pct"
        echo "# $label"
        last_pct=$pct
    fi

    if [ "$pct" -ge 100 ]; then
        break
    fi
    sleep 5
done
) | zenity --progress \
    --title="Vivado Bitstream Progress" \
    --text="Waiting for run to start..." \
    --percentage=0 \
    --auto-close \
    --width=420

if [ $? -eq 0 ]; then
    zenity --info --title="Done" --text="Bitstream generation finished." 2>/dev/null
fi
