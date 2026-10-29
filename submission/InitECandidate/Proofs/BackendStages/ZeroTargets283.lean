import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded283
import InitECandidate.Proofs.BackendStages.ZeroData283
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets283_eq : Padded283.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys283 := by
  with_unfolding_all rfl
theorem zeroTargets283_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded283 acc = ZeroData.keys283.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets283_eq]
#print axioms zeroTargets283_eq
end InitECandidate.Proofs.BackendStages
