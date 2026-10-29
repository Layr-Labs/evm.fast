#!/usr/bin/env python3
"""Export one built Lean theorem and time NanoDA's independent kernel check.

Example:
  python3 tools/certificate-bench/nanoda-single.py \
    InitECandidate.Proofs.WordStages.Pass64_4 \
    InitECandidate.Proofs.WordStages.pass64_4_eq --work /tmp/pass64-nanoda

This measures an isolated proof, not the submission's full import graph.
"""

import argparse
import json
import os
from pathlib import Path
import re
import subprocess
import time


ROOT = Path(__file__).resolve().parents[2]
TOOLS = ROOT / "verifier/.tools"
EXPORT_BUILD = TOOLS / "comparator/.lake/packages/lean4export/.lake/build"
EXPORTER = EXPORT_BUILD / "bin/lean4export"
NANODA = TOOLS / "nanoda_lib/target/release/nanoda_bin"
NAME = re.compile(r"[A-Za-z_][A-Za-z0-9_']*(?:\.[A-Za-z_][A-Za-z0-9_']*)*")


def phase(name: str, command: list[str], work: Path, env: dict[str, str],
          stdin: Path | None = None) -> dict:
    output = work / f"{name}.out"
    errors = work / f"{name}.err"
    timing = work / f"{name}.time"
    started = time.monotonic()
    with output.open("wb") as dst, errors.open("wb") as err:
        source = stdin.open("rb") if stdin else None
        try:
            proc = subprocess.run(
                ["/usr/bin/time", "-v", "-o", str(timing), *command],
                cwd=ROOT, env=env, stdin=source, stdout=dst, stderr=err)
        finally:
            if source:
                source.close()
    report = timing.read_text()

    def field(label: str) -> float:
        match = re.search(re.escape(label) + r":\s*([0-9.]+)", report)
        if not match:
            raise RuntimeError(f"missing {label} in {timing}")
        return float(match[1])

    result = {
        "phase": name,
        "exit": proc.returncode,
        "wall_seconds": round(time.monotonic() - started, 3),
        "user_seconds": field("User time (seconds)"),
        "system_seconds": field("System time (seconds)"),
        "peak_kib": int(field("Maximum resident set size (kbytes)")),
        "output_bytes": output.stat().st_size,
    }
    if proc.returncode:
        raise RuntimeError(f"{name} failed (exit {proc.returncode}); see {errors} and {output}")
    return result


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("module")
    parser.add_argument("theorem")
    parser.add_argument("--work", required=True, type=Path)
    args = parser.parse_args()
    if not NAME.fullmatch(args.module) or not NAME.fullmatch(args.theorem):
        parser.error("module and theorem must be ordinary Lean names")
    work = args.work.resolve()
    work.mkdir(parents=True, exist_ok=True)
    if any(work.iterdir()):
        parser.error("--work must name an empty directory")
    if not EXPORTER.is_file() or not NANODA.is_file():
        parser.error("run verifier/setup_tools.sh first")

    lean_path = subprocess.check_output(
        ["lake", "env", "printenv", "LEAN_PATH"], cwd=ROOT, text=True).strip()
    env = os.environ.copy()
    env["LEAN_PATH"] = str(EXPORT_BUILD / "lib/lean") + ":" + lean_path
    config = work / "nanoda.json"
    config.write_text(json.dumps({
        "use_stdin": True,
        "permitted_axioms": ["propext", "Quot.sound", "Classical.choice"],
        "unpermitted_axiom_hard_error": True,
        "nat_extension": True,
        "string_extension": True,
    }) + "\n")

    export = phase("export", [str(EXPORTER), args.module, "--", args.theorem],
                   work, env)
    nanoda = phase("nanoda", [str(NANODA), str(config)], work, env,
                   work / "export.out")
    summary = {"module": args.module, "theorem": args.theorem,
               "export": export, "nanoda": nanoda}
    (work / "results.json").write_text(json.dumps(summary, indent=2) + "\n")
    print(json.dumps(summary, sort_keys=True))


if __name__ == "__main__":
    main()
