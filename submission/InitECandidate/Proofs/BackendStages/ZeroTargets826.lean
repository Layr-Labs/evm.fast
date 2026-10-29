import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded826
import InitECandidate.Proofs.BackendStages.ZeroData826
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets826_eq : Padded826.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys826 := by
  with_unfolding_all rfl
theorem zeroTargets826_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded826 acc = ZeroData.keys826.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets826_eq]
#print axioms zeroTargets826_eq
end InitECandidate.Proofs.BackendStages
