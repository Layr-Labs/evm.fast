import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded369
import InitECandidate.Proofs.BackendStages.ZeroData369
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets369_eq : Padded369.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys369 := by
  with_unfolding_all rfl
theorem zeroTargets369_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded369 acc = ZeroData.keys369.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets369_eq]
#print axioms zeroTargets369_eq
end InitECandidate.Proofs.BackendStages
