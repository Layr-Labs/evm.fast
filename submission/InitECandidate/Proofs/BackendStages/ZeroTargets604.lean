import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded604
import InitECandidate.Proofs.BackendStages.ZeroData604
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets604_eq : Padded604.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys604 := by
  with_unfolding_all rfl
theorem zeroTargets604_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded604 acc = ZeroData.keys604.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets604_eq]
#print axioms zeroTargets604_eq
end InitECandidate.Proofs.BackendStages
