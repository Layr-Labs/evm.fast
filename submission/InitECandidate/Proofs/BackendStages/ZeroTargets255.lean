import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded255
import InitECandidate.Proofs.BackendStages.ZeroData255
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets255_eq : Padded255.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys255 := by
  with_unfolding_all rfl
theorem zeroTargets255_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded255 acc = ZeroData.keys255.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets255_eq]
#print axioms zeroTargets255_eq
end InitECandidate.Proofs.BackendStages
