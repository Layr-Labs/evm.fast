import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded549
import InitECandidate.Proofs.BackendStages.ZeroData549
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets549_eq : Padded549.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys549 := by
  with_unfolding_all rfl
theorem zeroTargets549_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded549 acc = ZeroData.keys549.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets549_eq]
#print axioms zeroTargets549_eq
end InitECandidate.Proofs.BackendStages
