import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded627
import InitECandidate.Proofs.BackendStages.ZeroData627
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets627_eq : Padded627.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys627 := by
  with_unfolding_all rfl
theorem zeroTargets627_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded627 acc = ZeroData.keys627.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets627_eq]
#print axioms zeroTargets627_eq
end InitECandidate.Proofs.BackendStages
