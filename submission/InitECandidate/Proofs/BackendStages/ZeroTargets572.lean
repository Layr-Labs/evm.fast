import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded572
import InitECandidate.Proofs.BackendStages.ZeroData572
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets572_eq : Padded572.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys572 := by
  with_unfolding_all rfl
theorem zeroTargets572_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded572 acc = ZeroData.keys572.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets572_eq]
#print axioms zeroTargets572_eq
end InitECandidate.Proofs.BackendStages
