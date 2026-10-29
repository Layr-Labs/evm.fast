import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded841
import InitECandidate.Proofs.BackendStages.ZeroData841
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets841_eq : Padded841.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys841 := by
  with_unfolding_all rfl
theorem zeroTargets841_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded841 acc = ZeroData.keys841.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets841_eq]
#print axioms zeroTargets841_eq
end InitECandidate.Proofs.BackendStages
