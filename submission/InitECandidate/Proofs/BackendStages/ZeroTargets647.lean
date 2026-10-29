import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded647
import InitECandidate.Proofs.BackendStages.ZeroData647
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets647_eq : Padded647.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys647 := by
  with_unfolding_all rfl
theorem zeroTargets647_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded647 acc = ZeroData.keys647.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets647_eq]
#print axioms zeroTargets647_eq
end InitECandidate.Proofs.BackendStages
