import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded646
import InitECandidate.Proofs.BackendStages.ZeroData646
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets646_eq : Padded646.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys646 := by
  with_unfolding_all rfl
theorem zeroTargets646_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded646 acc = ZeroData.keys646.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets646_eq]
#print axioms zeroTargets646_eq
end InitECandidate.Proofs.BackendStages
