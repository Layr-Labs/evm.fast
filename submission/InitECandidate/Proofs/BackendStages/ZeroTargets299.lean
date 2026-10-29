import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded299
import InitECandidate.Proofs.BackendStages.ZeroData299
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets299_eq : Padded299.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys299 := by
  with_unfolding_all rfl
theorem zeroTargets299_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded299 acc = ZeroData.keys299.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets299_eq]
#print axioms zeroTargets299_eq
end InitECandidate.Proofs.BackendStages
