import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded584
import InitECandidate.Proofs.BackendStages.ZeroData584
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets584_eq : Padded584.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys584 := by
  with_unfolding_all rfl
theorem zeroTargets584_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded584 acc = ZeroData.keys584.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets584_eq]
#print axioms zeroTargets584_eq
end InitECandidate.Proofs.BackendStages
