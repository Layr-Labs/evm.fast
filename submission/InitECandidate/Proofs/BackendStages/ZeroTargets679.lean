import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded679
import InitECandidate.Proofs.BackendStages.ZeroData679
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets679_eq : Padded679.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys679 := by
  with_unfolding_all rfl
theorem zeroTargets679_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded679 acc = ZeroData.keys679.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets679_eq]
#print axioms zeroTargets679_eq
end InitECandidate.Proofs.BackendStages
