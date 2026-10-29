import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded463
import InitECandidate.Proofs.BackendStages.ZeroData463
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets463_eq : Padded463.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys463 := by
  with_unfolding_all rfl
theorem zeroTargets463_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded463 acc = ZeroData.keys463.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets463_eq]
#print axioms zeroTargets463_eq
end InitECandidate.Proofs.BackendStages
