import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded531
import InitECandidate.Proofs.BackendStages.ZeroData531
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets531_eq : Padded531.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys531 := by
  with_unfolding_all rfl
theorem zeroTargets531_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded531 acc = ZeroData.keys531.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets531_eq]
#print axioms zeroTargets531_eq
end InitECandidate.Proofs.BackendStages
