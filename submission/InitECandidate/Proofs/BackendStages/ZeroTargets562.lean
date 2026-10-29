import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded562
import InitECandidate.Proofs.BackendStages.ZeroData562
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets562_eq : Padded562.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys562 := by
  with_unfolding_all rfl
theorem zeroTargets562_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded562 acc = ZeroData.keys562.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets562_eq]
#print axioms zeroTargets562_eq
end InitECandidate.Proofs.BackendStages
