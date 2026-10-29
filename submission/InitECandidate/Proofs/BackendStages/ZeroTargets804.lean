import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded804
import InitECandidate.Proofs.BackendStages.ZeroData804
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets804_eq : Padded804.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys804 := by
  with_unfolding_all rfl
theorem zeroTargets804_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded804 acc = ZeroData.keys804.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets804_eq]
#print axioms zeroTargets804_eq
end InitECandidate.Proofs.BackendStages
