import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded695
import InitECandidate.Proofs.BackendStages.ZeroData695
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets695_eq : Padded695.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys695 := by
  with_unfolding_all rfl
theorem zeroTargets695_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded695 acc = ZeroData.keys695.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets695_eq]
#print axioms zeroTargets695_eq
end InitECandidate.Proofs.BackendStages
