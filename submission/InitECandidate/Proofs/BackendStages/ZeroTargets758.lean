import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded758
import InitECandidate.Proofs.BackendStages.ZeroData758
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets758_eq : Padded758.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys758 := by
  with_unfolding_all rfl
theorem zeroTargets758_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded758 acc = ZeroData.keys758.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets758_eq]
#print axioms zeroTargets758_eq
end InitECandidate.Proofs.BackendStages
