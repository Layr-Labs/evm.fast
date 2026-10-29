import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded534
import InitECandidate.Proofs.BackendStages.ZeroData534
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets534_eq : Padded534.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys534 := by
  with_unfolding_all rfl
theorem zeroTargets534_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded534 acc = ZeroData.keys534.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets534_eq]
#print axioms zeroTargets534_eq
end InitECandidate.Proofs.BackendStages
