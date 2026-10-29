import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded371
import InitECandidate.Proofs.BackendStages.ZeroData371
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets371_eq : Padded371.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys371 := by
  with_unfolding_all rfl
theorem zeroTargets371_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded371 acc = ZeroData.keys371.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets371_eq]
#print axioms zeroTargets371_eq
end InitECandidate.Proofs.BackendStages
