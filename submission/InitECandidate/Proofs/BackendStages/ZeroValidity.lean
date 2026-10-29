import InitECandidate.Proofs.BackendStages.ZeroData
import InitECandidate.Proofs.BackendStages.TargetLabelsFinal
import InitECandidate.Proofs.BackendComputation
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.ZeroValidity
theorem valid : (sptToAList (ZeroData.full.foldr (fun key acc => sptInsert key () acc) .ln)).all (fun p => match sptLookup p.1 Target.labelsFinal with | none => false | some labels => (sptLookup 0 labels).isSome) = true := by
  with_unfolding_all rfl
#print axioms valid
end InitECandidate.Proofs.BackendStages.ZeroValidity
