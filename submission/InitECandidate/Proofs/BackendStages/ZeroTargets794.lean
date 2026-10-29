import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded794
import InitECandidate.Proofs.BackendStages.ZeroData794
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets794_eq : Padded794.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys794 := by
  with_unfolding_all rfl
theorem zeroTargets794_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded794 acc = ZeroData.keys794.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets794_eq]
#print axioms zeroTargets794_eq
end InitECandidate.Proofs.BackendStages
