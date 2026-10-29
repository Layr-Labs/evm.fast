import InitECandidate.Proofs.StackDepthComputation
import Flapjack.Misc.Sptree.Map
namespace InitECandidate.Proofs.StackAnalysis
open Flapjack Flapjack.Compiler.Backend

theorem slimCode_fromList (outputs : List (Nat × Nat × WordLangProgHOL (BitVec 64))) :
    WordDepth.Executable.slimCode (sptFromAList outputs) =
      sptFromAList (outputs.map (fun (i, a, p) => (i, a, WordDepth.Executable.slim p))) := by
  unfold WordDepth.Executable.slimCode
  rw [sptMap_sptFromAList]
  rfl

#print axioms slimCode_fromList
end InitECandidate.Proofs.StackAnalysis
