import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded354
import InitECandidate.Proofs.BackendStages.ZeroData354
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets354_eq : Padded354.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys354 := by
  with_unfolding_all rfl
theorem zeroTargets354_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded354 acc = ZeroData.keys354.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets354_eq]
#print axioms zeroTargets354_eq
end InitECandidate.Proofs.BackendStages
