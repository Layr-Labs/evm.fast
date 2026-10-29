"""Score mapping and verifier timing for scripts/run.py, with the verifier mocked."""
from __future__ import annotations

import contextlib
import io
import json
from pathlib import Path
import subprocess
import sys
import tempfile
import unittest
from unittest.mock import patch

sys.path.insert(0, str(Path(__file__).resolve().parent))
import run  # noqa: E402

AXIOMS = ["Classical.choice", "Quot.sound", "propext"]
CONTRACT = "c" * 64
RUNNER = {"name": "blacksmith-1", "cpuModel": "AMD EPYC 9454P 48-Core Processor", "cpuCount": 30,
          "guestVm": False}
# What scripts/run.py wrote before verifier timing was recorded.
LEGACY = {
    "infinity": '{"score": 9007199254740991, "metrics": {"claim": "infinity", "finite": false, '
                '"verification": "comparator", "comparatorVerified": true, "permittedAxioms": '
                '["Classical.choice", "Quot.sound", "propext"], "axioms": ["Classical.choice", "Quot.sound", '
                f'"propext"], "contractSha256": "{CONTRACT}", "contractCommit": "abc123"}}}}\n',
    1234: '{"score": 1234, "metrics": {"claim": 1234, "finite": true, "verification": "comparator", '
          '"comparatorVerified": true, "permittedAxioms": ["Classical.choice", "Quot.sound", "propext"], '
          f'"axioms": ["Classical.choice", "Quot.sound", "propext"], "contractSha256": "{CONTRACT}", '
          '"contractCommit": "abc123"}}\n',
}


def report(K, status="verified"):
    return {"status": status, "score": K, "claim": {"K": K}, "permitted_axioms": AXIOMS, "axioms": AXIOMS,
            "contract_sha256": CONTRACT}


class Harness(unittest.TestCase):
    def setUp(self):
        temporary = tempfile.TemporaryDirectory()
        self.addCleanup(temporary.cleanup)
        self.root = Path(temporary.name)
        (self.root / "scripts").mkdir()
        self.score = self.root / "scripts" / "score.json"
        self.cpuinfo = self.root / "cpuinfo"
        self.cpuinfo.write_text(f"processor\t: 0\nmodel name\t: {RUNNER['cpuModel']}\n\n"
                                f"processor\t: 1\nmodel name\t: other\n")
        for p in [patch.object(run, "ROOT", self.root), patch.object(run, "CPUINFO", self.cpuinfo),
                  patch.object(run.sys, "platform", "linux"), patch.object(run.os, "cpu_count", return_value=30),
                  patch.dict(run.os.environ, {"RUNNER_NAME": "blacksmith-1", "INIT_E_VERIFICATION": "comparator"})]:
            p.start()
            self.addCleanup(p.stop)
        self.calls = []

    def verifier(self, written):
        def fake(command, **kwargs):
            self.assertEqual(command[1], str(self.root / "verifier" / "verify.py"))
            self.assertEqual(command[-1], "--progress")
            self.calls.append(command)
            return subprocess.CompletedProcess(command, 0, stdout=json.dumps(written))
        return patch.object(run.subprocess, "run", fake)

    def run_main(self, written, clock=(100.0, 3700.27)):
        stderr = io.StringIO()
        with self.verifier(written), patch.object(run.subprocess, "check_output", return_value="abc123\n"), \
                patch.object(run.time, "monotonic", side_effect=list(clock)), contextlib.redirect_stderr(stderr), \
                contextlib.redirect_stdout(io.StringIO()):
            try:
                run.main()
            finally:
                self.stderr = stderr.getvalue()
        return self.score.read_text()

    def test_score_carries_minutes_and_timing_is_appended(self):
        # 3600.3 s rounds up to 61 minutes, below K's digits.
        for K, legacy in LEGACY.items():
            text = self.run_main(report(K))
            score = '1e+300, "scoreExact": "1' + "0" * 300 + '"' if K == "infinity" else \
                f'{K * 10_000 + 61}, "scoreExact": "{K * 10_000 + 61}"'
            timing = f', "verifySeconds": 3600.3, "verifyRunner": {json.dumps(RUNNER)}}}}}\n'
            expected = legacy.replace(f'"score": {2**53 - 1 if K == "infinity" else K},', f'"score": {score},', 1)
            self.assertEqual(text, expected[:-len("}}\n")] + timing)
            self.assertTrue(text.startswith(f'{{"score": {score}, "metrics": '))
            scored = json.loads(text)
            self.assertEqual(scored["score"], float(scored["scoreExact"]))

    def test_huge_k_carries_minutes(self):
        for K in [10**121, 10**121 + 1, run.time_score.LARGEST_K]:
            scored = json.loads(self.run_main(report(K)))
            self.assertEqual(scored["scoreExact"], str(K * 10_000 + 61))
            self.assertEqual(scored["score"], float(scored["scoreExact"]))
            self.assertEqual(scored["metrics"]["claim"], K)
        self.assertEqual(scored["score"], float(str(run.time_score.LARGEST_K * 10_000 + 61)))

    def test_verify_seconds_is_positive_float(self):
        metrics = json.loads(self.run_main(report("infinity"), clock=(5.0, 5.26)))["metrics"]
        self.assertIsInstance(metrics["verifySeconds"], float)
        self.assertEqual(metrics["verifySeconds"], 0.3)
        self.assertEqual(metrics["verifyRunner"], RUNNER)
        self.assertNotIn("verifyCpuSeconds", metrics)

    def test_build_mode_is_timed(self):
        built = dict(report(77), status="build_checked")
        with patch.dict(run.os.environ, {"INIT_E_VERIFICATION": "build"}), \
                patch.object(run, "build_verify", return_value=built):
            scored = json.loads(self.run_main(None, clock=(0.0, 12.04)))
        self.assertEqual((scored["score"], scored["scoreExact"], scored["metrics"]["verification"]),
                         (770_001, "770001", "build"))
        self.assertEqual(scored["metrics"]["verifySeconds"], 12.0)
        self.assertEqual(self.calls, [])

    def test_rejection_writes_no_score_but_logs_timing(self):
        for written in [report("infinity", status="rejected"), report(5, status="failed")]:
            self.score.write_text("stale")
            with self.assertRaises(SystemExit):
                self.run_main(written)
            self.assertFalse(self.score.exists())
            line = next(line for line in self.stderr.splitlines() if line.startswith("Verifier timing: "))
            self.assertEqual(json.loads(line.removeprefix("Verifier timing: ")),
                             {"verifySeconds": 3600.3, "verifyRunner": RUNNER})

    def test_k_beyond_299_digits_fails_closed(self):
        for K in [run.time_score.LARGEST_K + 1, 10**300, -1, True, "7"]:
            self.score.write_text("stale")
            with self.assertRaises(SystemExit):
                self.run_main(report(K))
            self.assertFalse(self.score.exists())

    def test_no_timing_when_verifier_never_runs(self):
        for platform, mode in [("darwin", "comparator"), ("linux", "replay")]:
            self.score.write_text("stale")
            with patch.object(run.sys, "platform", platform), \
                    patch.dict(run.os.environ, {"INIT_E_VERIFICATION": mode}), self.assertRaises(SystemExit):
                self.run_main(report("infinity"), clock=())
            self.assertFalse(self.score.exists())
            self.assertNotIn("Verifier timing", self.stderr)
        self.assertEqual(self.calls, [])

    def test_runner_info(self):
        self.assertEqual(run.runner(), RUNNER)
        self.cpuinfo.unlink()
        with patch.dict(run.os.environ, {"RUNNER_NAME": ""}), patch.object(run, "ROOT", run.GUEST_ROOT):
            self.assertEqual(run.runner(), {"cpuCount": 30, "guestVm": True})


if __name__ == "__main__":
    unittest.main()
