import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded262
import InitECandidate.Proofs.BackendStages.ZeroData262
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets262_eq : Padded262.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys262 := by
  with_unfolding_all rfl
theorem zeroTargets262_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded262 acc = ZeroData.keys262.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets262_eq]
#print axioms zeroTargets262_eq
end InitECandidate.Proofs.BackendStages
