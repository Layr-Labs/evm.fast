import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded110
import InitECandidate.Proofs.BackendStages.ZeroData110
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets110_eq : Padded110.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys110 := by
  with_unfolding_all rfl
theorem zeroTargets110_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded110 acc = ZeroData.keys110.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets110_eq]
#print axioms zeroTargets110_eq
end InitECandidate.Proofs.BackendStages
