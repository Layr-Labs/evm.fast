import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded225
import InitECandidate.Proofs.BackendStages.ZeroData225
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets225_eq : Padded225.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys225 := by
  with_unfolding_all rfl
theorem zeroTargets225_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded225 acc = ZeroData.keys225.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets225_eq]
#print axioms zeroTargets225_eq
end InitECandidate.Proofs.BackendStages
