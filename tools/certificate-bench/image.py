#!/usr/bin/env python3
"""Compare the old and compact bitmap-image certificates, never the full solution.

Requires built BootstrapLastWord, BitmapImageFacts, and verifier comparator tools.
The old proof bodies are reconstructed even after the production optimization.
Every export includes its complete dependency closure and kernel primitives.
"""
import argparse
import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
import time

ROOT = Path(__file__).resolve().parents[2]
HERE = Path(__file__).resolve().parent
PROOFS = ROOT / "submission/InitECandidate/Proofs"
LEGAL = ["propext", "Quot.sound", "Classical.choice"]
PRIMITIVES = ["Nat.add", "Nat.sub", "Nat.mul", "Nat.pow", "Nat.gcd", "Nat.div",
              "Nat.mod", "Nat.beq", "Nat.ble", "Nat.land", "Nat.lor", "Nat.xor",
              "Nat.shiftLeft", "Nat.shiftRight", "String.ofList", "Char.ofNat",
              "List", "eagerReduce"]
HEADER = """import InitECandidate.Proofs.BootstrapLastWord
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open InitE InitECandidate.Proofs Flapjack Flapjack.RiscV.TargetProof
open scoped InitECandidate.Proofs.CompilerComputation InitECandidate.Proofs.ImageComputation
"""


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--work", type=Path, required=True)
    ap.add_argument("--family", choices=["word", "bitmap", "both"], default="both")
    ap.add_argument("--trials", type=int, default=3)
    ap.add_argument("--timeout", type=int, default=180)
    args = ap.parse_args()
    if args.trials < 1 or args.timeout < 1:
        ap.error("trials and timeout must be positive")
    os.chdir(ROOT)
    out = args.work.resolve()
    out.mkdir(parents=True, exist_ok=True)
    if any(out.iterdir()):
        ap.error("use an empty work directory")

    word = (PROOFS / "BootstrapLastWord.lean").read_text()
    bitmap = (PROOFS / "BitmapImageFacts.lean").read_text()
    word = word[word.index("theorem final_bitmap_word_image"):word.index("private theorem copyState_value")]
    bitmap = bitmap[bitmap.index("theorem bitmap_image_bytes"):bitmap.index("theorem submitted_image_size")]
    fragments = {
        "word": word.replace("final_bitmap_word_image", "wordCertificate"),
        "bitmap": bitmap.replace("bitmap_image_bytes", "bitmapCertificate"),
    }
    families = ["word", "bitmap"] if args.family == "both" else [args.family]
    old, new, challenge, names = [], [], [], []
    for family in families:
        statement, body = fragments[family].split(":= by", 1)
        name = re.search(r"theorem (\w+)", statement)[1]
        names.append(name)
        new.append(statement + ":= by" + body)
        old_body = " decide_cbv\n" if family == "word" else body.replace("kernel_rfl", "decide_cbv")
        old.append(statement + ":= by" + old_body)
        # The comparator requires matching declaration kinds. A theorem hole is
        # permitted only in this benchmark challenge, never in either solution.
        challenge.append(statement + ":= by sorry\n")
    audits = "\n".join("#print axioms " + name for name in names)
    for case, bodies in [("Control", old), ("Compact", new), ("Challenge", challenge)]:
        (out / (case + ".lean")).write_text(HEADER + "\n".join(bodies) + ("\n" + audits if case != "Challenge" else ""))

    exp = ROOT / "verifier/.tools/comparator/.lake/packages/lean4export/.lake/build"
    comparator = ROOT / "verifier/.tools/comparator/.lake/build/lib/lean"
    base = subprocess.check_output(["lake", "env", "printenv", "LEAN_PATH"], text=True).strip()
    lean = subprocess.check_output(["lake", "env", "which", "lean"], text=True).strip()
    env = os.environ.copy()
    env["LEAN_PATH"] = ":".join([str(out), str(comparator), str(exp / "lib/lean"), base])
    paths = [PROOFS / n for n in ["BootstrapLastWord.lean", "BitmapImageFacts.lean", "ImageComputation.lean"]]
    metadata = {
        "family": args.family, "trials": args.trials, "timeout": args.timeout,
        "toolchain": (ROOT / "lean-toolchain").read_text().strip(),
        "source_sha256": {str(p.relative_to(ROOT)): hashlib.sha256(p.read_bytes()).hexdigest() for p in paths},
        "scope": "Only selected image lemmas; complete exported dependencies; existing common build artifacts.",
    }
    (out / "metadata.json").write_text(json.dumps(metadata, indent=2) + "\n")
    rows = []

    def timed(case, phase, trial, cmd, artifact, stdout_path=None):
        stem = f"{case}-{phase}-{trial}"
        tf, log_path = out / (stem + ".time"), out / (stem + ".log")
        start = time.monotonic()
        with log_path.open("w") as log:
            if stdout_path:
                with stdout_path.open("w") as dst:
                    result = subprocess.run(["/usr/bin/time", "-v", "-o", str(tf), "timeout", "--kill-after=10s", str(args.timeout), *cmd],
                                            env=env, stdout=dst, stderr=log)
            else:
                result = subprocess.run(["/usr/bin/time", "-v", "-o", str(tf), "timeout", "--kill-after=10s", str(args.timeout), *cmd],
                                        env=env, stdout=log, stderr=subprocess.STDOUT)
        timing, log = tf.read_text(), log_path.read_text()
        def value(key):
            match = re.search(re.escape(key) + r":\s*([0-9.]+)", timing)
            return float(match[1]) if match else None
        row = dict(case=case, phase=phase, trial=trial, exit=result.returncode,
                   wall=time.monotonic()-start, user=value("User time (seconds)"),
                   system=value("System time (seconds)"), peak_kib=value("Maximum resident set size (kbytes)"),
                   artifact_bytes=artifact.stat().st_size if artifact.exists() else None, log=log)
        for key, val in re.findall(r"(parse_ms|compare_ms|replay_ms|constants)=(\d+)", log):
            row[key] = int(val)
        rows.append(row)
        (out / "results.json").write_text(json.dumps(rows, indent=2) + "\n")
        print(json.dumps({k: v for k, v in row.items() if k != "log"}), flush=True)
        if result.returncode:
            raise RuntimeError(f"{stem} failed or timed out: {log_path}")
        for closure in re.findall(r"depends on axioms: \[([^\]]*)\]", log):
            if not {a.strip() for a in closure.split(",") if a.strip()} <= set(LEGAL):
                raise RuntimeError(f"unexpected axiom: {closure}")
        if phase == "compare" and "comparator=accepted" not in log:
            raise RuntimeError("missing comparator acceptance")

    for case in ["Challenge", "Control", "Compact"]:
        artifact = out / (case + ".olean")
        timed(case, "build", 0, [lean, "-j1", "-o", str(artifact), str(out / (case + ".lean"))], artifact)
        export = out / (case + ".jsonl")
        timed(case, "export", 0, [str(exp / "bin/lean4export"), case, "--", *names, *LEGAL, *PRIMITIVES], export, export)
    for trial in range(args.trials):
        for case in ["Control", "Compact"] if trial % 2 == 0 else ["Compact", "Control"]:
            export = out / (case + ".jsonl")
            timed(case, "compare", trial,
                  [lean, "-j1", "--run", str(HERE / "CompareReplay.lean"), str(out / "Challenge.jsonl"), str(export), *names], export)


if __name__ == "__main__":
    main()
