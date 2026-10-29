import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded535
import InitECandidate.Proofs.BackendStages.ZeroData535
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets535_eq : Padded535.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys535 := by
  with_unfolding_all rfl
theorem zeroTargets535_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded535 acc = ZeroData.keys535.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets535_eq]
#print axioms zeroTargets535_eq
end InitECandidate.Proofs.BackendStages
