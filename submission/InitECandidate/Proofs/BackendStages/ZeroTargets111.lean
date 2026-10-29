import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded111
import InitECandidate.Proofs.BackendStages.ZeroData111
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets111_eq : Padded111.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys111 := by
  with_unfolding_all rfl
theorem zeroTargets111_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded111 acc = ZeroData.keys111.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets111_eq]
#print axioms zeroTargets111_eq
end InitECandidate.Proofs.BackendStages
