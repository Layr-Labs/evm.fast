from pathlib import Path
import re
root=Path("submission/InitECandidate/Proofs/StackAnalysis")
root.mkdir(exist_ok=True)
def write_if_changed(path,text):
 if not path.exists() or path.read_text()!=text: path.write_text(text)
ast=Path("Guest/SoftwareAst.lean").read_text()
function_count=len(re.findall(r"\bguestFn_\w+",ast[ast.index("def guestAst :"):]))+1
last_label=64+function_count
nums=[]
for src in sorted(Path("submission/InitECandidate/Proofs/WordStages").glob("Optimize*.lean"),key=lambda p:int(re.search(r"\d+",p.stem)[0])):
 n=int(re.search(r"\d+",src.stem)[0])
 if n>=last_label: continue
 nums.append(n)
 text=src.read_text(); defs=re.findall(r"(?ms)^def (optimized(?:Body)?\d+[^ :]*).*?(?=^def |^theorem |^#print|^end )",text)
 blocks=re.findall(r"(?ms)^def optimized(?:Body)?\d+[^ :]*.*?(?=^def |^theorem |^#print|^end )",text)
 pass_import=f"import InitECandidate.Proofs.WordStages.Pass{n}_10\n" if f"pass{n}_10" in "".join(blocks) else ""
 open_line="open Flapjack Flapjack.Compiler.Backend"
 if pass_import: open_line+=" InitECandidate.Proofs.WordStages"
 header=pass_import+"import InitECandidate.Proofs.StackFrameComputation\nimport Flapjack.Compiler.Backend.WordDepth.AnalysisInput\nset_option maxRecDepth 1000000\nset_option maxHeartbeats 0\nset_option Elab.async false\n"+open_line+"\nnamespace InitECandidate.Proofs.StackAnalysis\n"
 extra = ""
 if n == 713:
  sparse=Path("submission/InitECandidate/Proofs/WordStages/Sparse713/Data10.lean").read_text()
  extra="namespace Sparse713\n"+sparse[sparse.index("def word713_10_0"):sparse.rindex("end InitECandidate.Proofs.WordStages.Sparse713")]+"end Sparse713\n"
 write_if_changed(root/f"Data{n}.lean",header+extra+"".join(blocks)+"end InitECandidate.Proofs.StackAnalysis\n")
assert nums==list(range(64,last_label)),(len(nums),last_label)
write_if_changed(root/"Data.lean","".join(f"import InitECandidate.Proofs.StackAnalysis.Data{n}\n" for n in nums)+"namespace InitECandidate.Proofs.StackAnalysis\ndef outputs := ["+", ".join(f"optimized{n}" for n in nums)+"]\nend InitECandidate.Proofs.StackAnalysis\n")
print(len(nums))
