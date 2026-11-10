"""Freeze one completed precision build with verified metadata and bitstream hashes."""
import argparse, hashlib, json, re, shutil, subprocess, zipfile
import xml.etree.ElementTree as ET
from pathlib import Path

def sha(data):
    return hashlib.sha256(data).hexdigest()

def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--width",type=int,choices=(18,21,24,27),required=True)
    parser.add_argument("--solvers",type=int,required=True)
    parser.add_argument("--lut-solvers",type=int,default=0)
    args=parser.parse_args()
    if not 0<=args.lut_solvers<=args.solvers:
        parser.error("LUT solver count must be 0..solvers")
    suffix=f"w{args.width}_n{args.solvers}" if not args.lut_solvers else f"w{args.width}_d{args.solvers-args.lut_solvers}_l{args.lut_solvers}"
    if not 1<=args.solvers<=255:
        parser.error("solver count must be 1..255")
    lab=Path(__file__).resolve().parents[2]
    hw=lab/"Mandelbrot_hdmi/Zybo-Z7-HW"
    xsa=hw/"design_1_wrapper.xsa"
    bit=hw/"Zybo-Z7-HW.runs/impl_1/design_1_wrapper.bit"
    tag=("hybrid_" if args.lut_solvers else "precision_")+suffix
    report=lab/f"util_{tag}.rpt"
    timing=lab/f"timing_{tag}.rpt"
    files=[xsa,bit,report,timing,lab/f"util_{tag}_hier.rpt",lab/f"bus_skew_{tag}.rpt"]
    for file in files:
        if not file.is_file():
            raise SystemExit(f"Missing build artifact: {file}")
    with zipfile.ZipFile(xsa) as z:
        hwh=ET.fromstring(z.read("design_1.hwh"))
        modules=[m for m in hwh.iter("MODULE") if m.get("MODTYPE")=="mandelbrot_driver"]
        if len(modules)!=1:
            raise SystemExit("Expected exactly one Mandelbrot IP in the XSA")
        params={p.get("NAME"):p.get("VALUE") for p in modules[0].iter("PARAMETER")}
        actual=(int(params.get("SOLVER_W","-1")),int(params.get("NSOLV","-1")))
        if actual!=(args.width,args.solvers):
            raise SystemExit(f"XSA is width/count {actual}, not requested {(args.width,args.solvers)}")
        if int(params.get("LUT_SOLVERS","0"))!=args.lut_solvers:
            raise SystemExit("XSA LUT_SOLVERS does not match requested build")
        if z.read("design_1_wrapper.bit")!=bit.read_bytes():
            raise SystemExit("XSA's embedded bitstream differs from the implementation .bit")
    raw=report.read_text()
    if "Design State : Routed" not in raw:
        raise SystemExit("Utilization is not a routed report")
    metrics={}
    for key,label in [("dsps","DSPs"),("luts","Slice LUTs"),("registers","Slice Registers"),("bram_tiles","Block RAM Tile"),("occupied_slices","Slice")]:
        found=re.search(r"\|\s*"+re.escape(label)+r"\s*\|\s*(\d+)\s*\|",raw)
        if not found:
            raise SystemExit(f"Missing utilization metric: {label}")
        metrics[key]=int(found.group(1))
    t=timing.read_text()
    summary=re.search(r"WNS\(ns\).*?\n\s*-+[^\n]*\n\s*([0-9.-]+)\s+([0-9.-]+)\s+(\d+)\s+\d+\s+([0-9.-]+)\s+([0-9.-]+)\s+(\d+)",t,re.S)
    if not summary:
        raise SystemExit("Cannot parse timing summary")
    metrics.update(wns_ns=float(summary[1]),whs_ns=float(summary[4]))
    if metrics["wns_ns"]<0 or metrics["whs_ns"]<0 or int(summary[3]) or int(summary[6]) or metrics["dsps"]>80:
        raise SystemExit("Setup/hold timing or DSP budget failed")
    skew=(lab/f"bus_skew_{tag}.rpt").read_text()
    slacks=[float(v) for v in re.findall(r"^\s+(?:Slow|Fast)\s+[\d.]+\s+[\d.]+\s+([-\d.]+)\s*$",skew,re.M)]
    if not slacks or min(slacks)<0:
        raise SystemExit("Bus-skew constraints are missing or failing")
    metrics.update(bus_skew_constraints=len(slacks),minimum_bus_skew_slack_ns=min(slacks))
    # Refuse a stale report even if same-named XSA and .bit files agree.
    date_match=re.search(r"^\| Date\s*:\s*([^\r\n|]+)",raw,re.M)
    report_date=date_match[1] if date_match else None
    from datetime import datetime
    if report_date:
        report_stamp=datetime.strptime(report_date,"%a %b %d %H:%M:%S %Y").timestamp()
        if report_stamp+10<bit.stat().st_mtime or abs(report_stamp-xsa.stat().st_mtime)>300:
            raise SystemExit("Report/bitstream/XSA dates do not describe the same completed build")
    output=lab/"precision/artifacts"/suffix
    output.mkdir(parents=True,exist_ok=True)
    copies={xsa:f"design_1_wrapper_{suffix}.xsa",bit:f"design_1_wrapper_{suffix}.bit"}
    copies.update({f:f.name for f in files[2:]})
    artifacts={}
    for source,name in copies.items():
        target=output/name
        payload=source.read_bytes()
        if target.exists() and target.read_bytes()!=payload:
            raise SystemExit(f"Refusing to overwrite different frozen artifact: {target}")
        shutil.copyfile(source,target)
        artifacts[name]={"sha256":sha(payload),"bytes":len(payload)}
    src=hw/"ip_repo/mandelbrot_driver_1_0"
    source_hashes={}
    for relative in ("src/mandel_engine.v","src/mandel_solver.v","hdl/mandelbrot_driver.v","hdl/mandelbrot_driver_slave_lite_v1_0_S00_AXI.v"):
        source_hashes[relative]=sha((src/relative).read_bytes())
    revision=subprocess.check_output(["git","rev-parse","HEAD"],cwd=lab).decode().strip()
    manifest={"width":args.width,"fractional_bits":args.width-4,"built_solvers":args.solvers,"lut_solvers":args.lut_solvers,"native_solvers":args.solvers-args.lut_solvers,"engine_clock_hz":100000000,"format_register":f"0x{(0x4d42<<16)|((args.width-4)<<8)|args.width:08x}","build_report_date":report_date,"git_head_at_export":revision,"source_sha256":source_hashes,"routed_resources":metrics,"artifacts":artifacts,"board_measurement":None,"note":"Metadata and embedded .bit verified. Board timing and visual validation require user's run; simulation is recorded separately."}
    manifest_path=output/"manifest.json"
    if manifest_path.exists():
        previous=json.loads(manifest_path.read_text())
        if previous.get("artifacts")==artifacts:
            manifest["board_measurement"]=previous.get("board_measurement")
    manifest["note"]="Metadata and embedded .bit verified. Board measurements, if supplied, are linked separately from simulation results."
    manifest_path.write_text(json.dumps(manifest,indent=2)+"\n",encoding="utf-8")
    print(json.dumps({"directory":str(output),"format":manifest["format_register"],"resources":metrics,"xsa_sha256":artifacts[copies[xsa]]["sha256"]},indent=2))

if __name__=="__main__":
    main()
