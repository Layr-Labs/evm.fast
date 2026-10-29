import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded473
import InitECandidate.Proofs.BackendStages.ZeroData473
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets473_eq : Padded473.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys473 := by
  with_unfolding_all rfl
theorem zeroTargets473_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded473 acc = ZeroData.keys473.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets473_eq]
#print axioms zeroTargets473_eq
end InitECandidate.Proofs.BackendStages
