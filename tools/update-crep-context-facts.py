#!/usr/bin/env python3
"""Refresh the source-indexed Crep metadata lemma after guest regeneration."""
from pathlib import Path
import re

root = Path(__file__).resolve().parents[1]
ast = (root / "Guest/SoftwareAst.lean").read_text()
names = re.findall(r"\bguest(?:Global|Exn|Fn)_\w+", ast[ast.index("def guestAst :"):])
names = [names[-1], *names[:-1]]
functions = [i for i, name in enumerate(names) if name.startswith("guestFn_") and i != 0]
exceptions = [i for i, name in enumerate(names) if name.startswith("guestExn_")]
rules = ["pass2", "Declarations.translatedFunctions", "generatedMain", "functionSkeleton"]
rules += [f"Declarations.globalOutput{i}" for i in functions]
rules += [f"Declarations.globalData{i}" for i in functions]
rules += ["declToHOL", "funDeclToHOL", "Declarations.exceptionDeclarations"]
rules += [f"Declarations.simplified{i}" for i in exceptions]
rules += [f"Declarations.simplifiedData{i}" for i in exceptions]
rules += ["paramToHOL", "functionsHOL", "makeFuncsEntriesHOL", "List.map_cons",
          "List.map_nil", "List.cons_append", "List.nil_append"]
path = root / "submission/InitECandidate/Proofs/FrontendStages/Crep/ContextFacts.lean"
lines = path.read_text().splitlines(keepends=True)
index = next(i for i, line in enumerate(lines) if line.startswith("  simp only [pass2,"))
lines[index] = "  simp only [" + ", ".join(rules) + "]\n"
path.write_text("".join(lines))
