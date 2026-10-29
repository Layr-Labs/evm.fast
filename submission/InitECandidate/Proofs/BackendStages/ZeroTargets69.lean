import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded69
import InitECandidate.Proofs.BackendStages.ZeroData69
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets69_eq : Padded69.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys69 := by
  with_unfolding_all rfl
theorem zeroTargets69_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded69 acc = ZeroData.keys69.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets69_eq]
#print axioms zeroTargets69_eq
end InitECandidate.Proofs.BackendStages
