import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded317
import InitECandidate.Proofs.BackendStages.ZeroData317
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets317_eq : Padded317.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys317 := by
  with_unfolding_all rfl
theorem zeroTargets317_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded317 acc = ZeroData.keys317.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets317_eq]
#print axioms zeroTargets317_eq
end InitECandidate.Proofs.BackendStages
