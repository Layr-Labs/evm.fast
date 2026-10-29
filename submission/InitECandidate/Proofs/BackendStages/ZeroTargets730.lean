import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded730
import InitECandidate.Proofs.BackendStages.ZeroData730
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets730_eq : Padded730.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys730 := by
  with_unfolding_all rfl
theorem zeroTargets730_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded730 acc = ZeroData.keys730.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets730_eq]
#print axioms zeroTargets730_eq
end InitECandidate.Proofs.BackendStages
