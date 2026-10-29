import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded423
import InitECandidate.Proofs.BackendStages.ZeroData423
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets423_eq : Padded423.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys423 := by
  with_unfolding_all rfl
theorem zeroTargets423_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded423 acc = ZeroData.keys423.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets423_eq]
#print axioms zeroTargets423_eq
end InitECandidate.Proofs.BackendStages
