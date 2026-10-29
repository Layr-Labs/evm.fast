import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded439
import InitECandidate.Proofs.BackendStages.ZeroData439
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets439_eq : Padded439.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys439 := by
  with_unfolding_all rfl
theorem zeroTargets439_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded439 acc = ZeroData.keys439.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets439_eq]
#print axioms zeroTargets439_eq
end InitECandidate.Proofs.BackendStages
