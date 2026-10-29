from pathlib import Path
import re
root=Path("submission/InitECandidate/Proofs/StackAnalysis")
ast=Path("Guest/SoftwareAst.lean").read_text()
function_count=len(re.findall(r"\bguestFn_\w+",ast[ast.index("def guestAst :"):]))+1
last_label=64+function_count
nums=sorted(int(re.search(r"\d+",p.stem)[0]) for p in root.glob("Facts*.lean")
            if int(re.search(r"\d+",p.stem)[0])<last_label)
assert nums==list(range(64,last_label))
args={n:int(re.search(rf"slimEntry{n}_eq.*?= \({n}, (\d+),",(root/f"Facts{n}.lean").read_text())[1]) for n in nums}
text="".join(f"import InitECandidate.Proofs.StackAnalysis.Facts{n}\n" for n in nums)
text+="import InitECandidate.Proofs.StackAnalysis.Data\nimport InitECandidate.Proofs.StackAnalysis.Bridge\nset_option maxRecDepth 1000000\nset_option maxHeartbeats 0\nset_option cbv.maxSteps 1000000000\nset_option cbv.warning false\nset_option Elab.async false\nnamespace InitECandidate.Proofs.StackAnalysis\nopen Flapjack Flapjack.Compiler.Backend\n"
text+="def frameEntries : List (Nat × Nat) := ["+", ".join(f"({n}, frame{n})" for n in nums)+"]\n"
text+="def slimEntries : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := ["+", ".join(f"({n}, {args[n]}, slim{n})" for n in nums)+"]\n"
text+="theorem frameEntries_eq : outputs.map frameEntry = frameEntries := by\n  simp only [outputs, List.map_cons, List.map_nil, "+", ".join(f"frameEntry{n}_eq" for n in nums)+"]\n  rfl\n"
text+="theorem slimEntries_eq : outputs.map slimEntry = slimEntries := by\n  simp only [outputs, List.map_cons, List.map_nil, "+", ".join(f"slimEntry{n}_eq" for n in nums)+"]\n  simp only [slimEntries]\n"
text+="theorem depth_eq : StackDepthComputation.depthOfWordOutputs outputs =\n    WordDepth.Executable.fullCallGraphDepth (sptFromAList frameEntries)\n      BvlToBvi.initGlobalsLocation (sptFromAList slimEntries) := by\n  unfold StackDepthComputation.depthOfWordOutputs\n  rw [StackAnalysis.FastDepth.fullCallGraphDepthFast_eq]\n  unfold WordDepth.Executable.fullCallGraphDepthExecutable\n  rw [slimCode_fromList]\n  change WordDepth.Executable.fullCallGraphDepth (sptFromAList (outputs.map frameEntry))\n    BvlToBvi.initGlobalsLocation (sptFromAList (outputs.map slimEntry)) = _\n  rw [frameEntries_eq, slimEntries_eq]\n#print axioms depth_eq\nend InitECandidate.Proofs.StackAnalysis\n"
(root/"Aggregate.lean").write_text(text)

print(len(nums))
