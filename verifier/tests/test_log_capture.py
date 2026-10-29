import io
import os
import sys
import tempfile
import unittest
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from verify import LOG_CAP, run_checked


class LogCaptureTests(unittest.TestCase):
    def test_small_log_unchanged(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            log = root / "build.log"
            expected = b"starting\nfinal diagnostic\n"
            progress = io.BytesIO()
            code, timed_out = run_checked(
                [sys.executable, "-c", "import sys; sys.stdout.buffer.write(" + repr(expected) + ")"],
                root, os.environ.copy(), log, progress_stream=progress)
            self.assertEqual(code, 0)
            self.assertFalse(timed_out)
            self.assertEqual(log.read_bytes(), expected)
            self.assertEqual(progress.getvalue(), expected)

    def test_large_log_drained_and_terminal_marker_retained(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            log = root / "build.log"
            marker = b"INIT_E_TRUSTED_AXIOMS: [propext, Classical.choice, Quot.sound]\n"
            script = (
                "import sys; from pathlib import Path; "
                f"sys.stdout.buffer.write(b'x' * {LOG_CAP * 3}); "
                "sys.stdout.buffer.write(" + repr(marker) + "); "
                "sys.stdout.buffer.flush(); Path('drained').write_text('done')")
            code, timed_out = run_checked(
                [sys.executable, "-c", script], root, os.environ.copy(), log,
                wall_seconds=10)
            self.assertEqual(code, 0)
            self.assertFalse(timed_out)
            self.assertEqual((root / "drained").read_text(), "done")
            captured = log.read_bytes()
            self.assertLessEqual(len(captured), LOG_CAP)
            self.assertTrue(captured.startswith(b"[output truncated;"))
            self.assertTrue(captured.endswith(marker))


if __name__ == "__main__":
    unittest.main()
