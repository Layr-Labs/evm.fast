import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded426
import InitECandidate.Proofs.BackendStages.ZeroData426
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets426_eq : Padded426.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys426 := by
  with_unfolding_all rfl
theorem zeroTargets426_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded426 acc = ZeroData.keys426.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets426_eq]
#print axioms zeroTargets426_eq
end InitECandidate.Proofs.BackendStages
