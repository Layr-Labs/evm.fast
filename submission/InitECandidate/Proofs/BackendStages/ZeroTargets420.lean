import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded420
import InitECandidate.Proofs.BackendStages.ZeroData420
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets420_eq : Padded420.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys420 := by
  with_unfolding_all rfl
theorem zeroTargets420_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded420 acc = ZeroData.keys420.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets420_eq]
#print axioms zeroTargets420_eq
end InitECandidate.Proofs.BackendStages
