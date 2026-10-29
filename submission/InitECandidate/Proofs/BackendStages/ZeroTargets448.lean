import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded448
import InitECandidate.Proofs.BackendStages.ZeroData448
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets448_eq : Padded448.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys448 := by
  with_unfolding_all rfl
theorem zeroTargets448_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded448 acc = ZeroData.keys448.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets448_eq]
#print axioms zeroTargets448_eq
end InitECandidate.Proofs.BackendStages
