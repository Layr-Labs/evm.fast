import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded190
import InitECandidate.Proofs.BackendStages.ZeroData190
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets190_eq : Padded190.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys190 := by
  with_unfolding_all rfl
theorem zeroTargets190_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded190 acc = ZeroData.keys190.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets190_eq]
#print axioms zeroTargets190_eq
end InitECandidate.Proofs.BackendStages
