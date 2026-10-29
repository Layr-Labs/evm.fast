from pathlib import Path
import json

calls = json.loads(Path("work/lean-perf/stack-analysis/calls.json").read_text())
nums = [identifier for identifier, _, _ in calls]
group_count = (len(nums) + 31) // 32
frames = {identifier: frame for identifier, frame, _ in calls}
edges = {identifier: set() for identifier in nums}
def scan(program, found):
 if not isinstance(program, list): return
 if program[0] == "seq":
  scan(program[1], found)
  scan(program[2], found)
 else:
  found.add(program[1])
  if program[2] is not None: scan(program[2], found)
  if program[3] is not None: scan(program[3], found)
for identifier, _, program in calls: scan(program, edges[identifier])
ranks = {}
def rank(identifier):
 if identifier not in ranks:
  ranks[identifier] = max([rank(target) + 1 for target in edges[identifier]] + [0])
 return ranks[identifier]
entry_rank = rank(64)
# RankedBound.fullCallGraphDepth_bounded uses 187 per rank level.
depth_bound = (entry_rank + 1) * 187
text="".join(f"import InitECandidate.Proofs.StackAnalysis.RankFacts{g}\n" for g in range(group_count))+"import InitECandidate.Proofs.StackAnalysis.Aggregate\nset_option maxRecDepth 1000000\nset_option maxHeartbeats 0\nset_option cbv.maxSteps 1000000000\nset_option cbv.warning false\nset_option Elab.async false\nnamespace InitECandidate.Proofs.StackAnalysis\nopen Flapjack Flapjack.Compiler.Backend\n"
text+="theorem frameMap_eq : sptFromAList frameEntries = certificateFrames := by cbv\n"
text+="theorem domains_eq :\n  sptMap (fun (_ : Nat × WordLangProgHOL (BitVec 64)) => PUnit.unit) (sptFromAList slimEntries) =\n  sptMap (fun (_ : Nat) => PUnit.unit) certificateFrames := by\n  rw [sptMap_sptFromAList]\n  cbv\n"
text+="theorem frames_small : allSmall certificateFrames = true := by cbv\n"
text+=f"theorem rank_entry : callRank 64 = {entry_rank} := by cbv\n"
text+="theorem allRanked : slimEntries.all (fun (i,_,p) => ranked callRank present i p) = true := by\n  simp only [slimEntries, List.all_cons, List.all_nil, "+", ".join(f"ranked{n}" for n in nums)+", Bool.true_and]\n"
text+=f"""
theorem depth_bounded : bounded (StackDepthComputation.depthOfWordOutputs outputs) {depth_bound} := by
  rw [depth_eq, frameMap_eq]
  have same : (fun k => (sptLookup k (sptFromAList slimEntries)).isSome) = present := by
    funext k
    have dom := congrArg (fun tree => (sptLookup k tree).isSome) domains_eq
    simpa only [sptLookup_sptMap, Option.isSome_map, present] using dom
  have good : ∀ i a p, sptLookup i (sptFromAList slimEntries) = some (a,p) →
      ranked callRank (fun k => (sptLookup k (sptFromAList slimEntries)).isSome) i p = true := by
    rw [same]
    exact ranked_lookup_of_all callRank present slimEntries allRanked
  have found : sptLookup 64 (sptFromAList slimEntries) = some (1,slim64) := by cbv
  have bound := fullCallGraphDepth_bounded callRank (sptFromAList slimEntries)
    certificateFrames good (frames_of_domain _ _ domains_eq frames_small) 64 1 slim64 found
  have entryLocation : BvlToBvi.initGlobalsLocation = 64 := by cbv
  simpa only [rank_entry, entryLocation] using bound
#print axioms depth_bounded
end InitECandidate.Proofs.StackAnalysis
"""
Path("submission/InitECandidate/Proofs/StackAnalysis/Closed.lean").write_text(text)
