import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded693
import InitECandidate.Proofs.BackendStages.ZeroData693
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets693_eq : Padded693.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys693 := by
  with_unfolding_all rfl
theorem zeroTargets693_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded693 acc = ZeroData.keys693.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets693_eq]
#print axioms zeroTargets693_eq
end InitECandidate.Proofs.BackendStages
