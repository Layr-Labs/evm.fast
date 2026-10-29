import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded585
import InitECandidate.Proofs.BackendStages.ZeroData585
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets585_eq : Padded585.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys585 := by
  with_unfolding_all rfl
theorem zeroTargets585_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded585 acc = ZeroData.keys585.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets585_eq]
#print axioms zeroTargets585_eq
end InitECandidate.Proofs.BackendStages
