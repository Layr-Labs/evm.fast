import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded366
import InitECandidate.Proofs.BackendStages.ZeroData366
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets366_eq : Padded366.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys366 := by
  with_unfolding_all rfl
theorem zeroTargets366_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded366 acc = ZeroData.keys366.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets366_eq]
#print axioms zeroTargets366_eq
end InitECandidate.Proofs.BackendStages
