import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded416
import InitECandidate.Proofs.BackendStages.ZeroData416
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets416_eq : Padded416.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys416 := by
  with_unfolding_all rfl
theorem zeroTargets416_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded416 acc = ZeroData.keys416.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets416_eq]
#print axioms zeroTargets416_eq
end InitECandidate.Proofs.BackendStages
