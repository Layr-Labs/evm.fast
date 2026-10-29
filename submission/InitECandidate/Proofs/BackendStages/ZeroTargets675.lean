import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded675
import InitECandidate.Proofs.BackendStages.ZeroData675
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets675_eq : Padded675.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys675 := by
  with_unfolding_all rfl
theorem zeroTargets675_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded675 acc = ZeroData.keys675.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets675_eq]
#print axioms zeroTargets675_eq
end InitECandidate.Proofs.BackendStages
