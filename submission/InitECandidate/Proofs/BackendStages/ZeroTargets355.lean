import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded355
import InitECandidate.Proofs.BackendStages.ZeroData355
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets355_eq : Padded355.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys355 := by
  with_unfolding_all rfl
theorem zeroTargets355_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded355 acc = ZeroData.keys355.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets355_eq]
#print axioms zeroTargets355_eq
end InitECandidate.Proofs.BackendStages
