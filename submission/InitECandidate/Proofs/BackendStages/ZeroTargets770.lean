import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded770
import InitECandidate.Proofs.BackendStages.ZeroData770
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets770_eq : Padded770.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys770 := by
  with_unfolding_all rfl
theorem zeroTargets770_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded770 acc = ZeroData.keys770.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets770_eq]
#print axioms zeroTargets770_eq
end InitECandidate.Proofs.BackendStages
