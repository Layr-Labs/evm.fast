import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded481
import InitECandidate.Proofs.BackendStages.ZeroData481
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets481_eq : Padded481.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys481 := by
  with_unfolding_all rfl
theorem zeroTargets481_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded481 acc = ZeroData.keys481.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets481_eq]
#print axioms zeroTargets481_eq
end InitECandidate.Proofs.BackendStages
