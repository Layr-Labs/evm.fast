import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded628
import InitECandidate.Proofs.BackendStages.ZeroData628
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets628_eq : Padded628.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys628 := by
  with_unfolding_all rfl
theorem zeroTargets628_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded628 acc = ZeroData.keys628.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets628_eq]
#print axioms zeroTargets628_eq
end InitECandidate.Proofs.BackendStages
