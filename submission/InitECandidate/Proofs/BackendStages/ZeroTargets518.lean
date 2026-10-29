import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded518
import InitECandidate.Proofs.BackendStages.ZeroData518
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets518_eq : Padded518.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys518 := by
  with_unfolding_all rfl
theorem zeroTargets518_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded518 acc = ZeroData.keys518.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets518_eq]
#print axioms zeroTargets518_eq
end InitECandidate.Proofs.BackendStages
