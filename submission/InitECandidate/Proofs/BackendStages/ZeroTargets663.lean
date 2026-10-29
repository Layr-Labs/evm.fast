import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded663
import InitECandidate.Proofs.BackendStages.ZeroData663
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets663_eq : Padded663.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys663 := by
  with_unfolding_all rfl
theorem zeroTargets663_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded663 acc = ZeroData.keys663.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets663_eq]
#print axioms zeroTargets663_eq
end InitECandidate.Proofs.BackendStages
