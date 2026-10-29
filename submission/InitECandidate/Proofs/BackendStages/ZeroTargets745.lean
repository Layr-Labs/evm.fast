import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded745
import InitECandidate.Proofs.BackendStages.ZeroData745
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets745_eq : Padded745.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys745 := by
  with_unfolding_all rfl
theorem zeroTargets745_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded745 acc = ZeroData.keys745.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets745_eq]
#print axioms zeroTargets745_eq
end InitECandidate.Proofs.BackendStages
