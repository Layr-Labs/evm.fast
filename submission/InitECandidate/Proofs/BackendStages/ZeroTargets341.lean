import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded341
import InitECandidate.Proofs.BackendStages.ZeroData341
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets341_eq : Padded341.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys341 := by
  with_unfolding_all rfl
theorem zeroTargets341_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded341 acc = ZeroData.keys341.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets341_eq]
#print axioms zeroTargets341_eq
end InitECandidate.Proofs.BackendStages
