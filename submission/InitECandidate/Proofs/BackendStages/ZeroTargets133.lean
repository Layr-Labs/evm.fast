import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded133
import InitECandidate.Proofs.BackendStages.ZeroData133
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets133_eq : Padded133.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys133 := by
  with_unfolding_all rfl
theorem zeroTargets133_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded133 acc = ZeroData.keys133.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets133_eq]
#print axioms zeroTargets133_eq
end InitECandidate.Proofs.BackendStages
