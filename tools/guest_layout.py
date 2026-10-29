"""Current software guest function labels for certificate generators."""

from pathlib import Path
import re

ROOT = Path(__file__).resolve().parents[1]
SOURCE = (ROOT / "Guest/SoftwareAst.lean").read_text()
FUNCTION_COUNT = len(re.findall(r"\bguestFn_\w+", SOURCE[SOURCE.index("def guestAst :"):])) + 1
LAST_LABEL = 63 + FUNCTION_COUNT
STOP_LABEL = LAST_LABEL + 1
