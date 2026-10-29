import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded537
import InitECandidate.Proofs.BackendStages.ZeroData537
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets537_eq : Padded537.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys537 := by
  with_unfolding_all rfl
theorem zeroTargets537_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded537 acc = ZeroData.keys537.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets537_eq]
#print axioms zeroTargets537_eq
end InitECandidate.Proofs.BackendStages
