import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded645
import InitECandidate.Proofs.BackendStages.ZeroData645
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets645_eq : Padded645.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys645 := by
  with_unfolding_all rfl
theorem zeroTargets645_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded645 acc = ZeroData.keys645.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets645_eq]
#print axioms zeroTargets645_eq
end InitECandidate.Proofs.BackendStages
