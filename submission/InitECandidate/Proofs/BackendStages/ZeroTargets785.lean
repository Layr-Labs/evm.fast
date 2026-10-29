import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded785
import InitECandidate.Proofs.BackendStages.ZeroData785
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets785_eq : Padded785.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys785 := by
  with_unfolding_all rfl
theorem zeroTargets785_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded785 acc = ZeroData.keys785.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets785_eq]
#print axioms zeroTargets785_eq
end InitECandidate.Proofs.BackendStages
