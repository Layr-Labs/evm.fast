import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded292
import InitECandidate.Proofs.BackendStages.ZeroData292
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets292_eq : Padded292.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys292 := by
  with_unfolding_all rfl
theorem zeroTargets292_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded292 acc = ZeroData.keys292.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets292_eq]
#print axioms zeroTargets292_eq
end InitECandidate.Proofs.BackendStages
