import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded742
import InitECandidate.Proofs.BackendStages.ZeroData742
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets742_eq : Padded742.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys742 := by
  with_unfolding_all rfl
theorem zeroTargets742_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded742 acc = ZeroData.keys742.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets742_eq]
#print axioms zeroTargets742_eq
end InitECandidate.Proofs.BackendStages
