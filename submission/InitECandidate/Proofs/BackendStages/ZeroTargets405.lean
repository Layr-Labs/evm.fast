import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded405
import InitECandidate.Proofs.BackendStages.ZeroData405
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets405_eq : Padded405.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys405 := by
  with_unfolding_all rfl
theorem zeroTargets405_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded405 acc = ZeroData.keys405.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets405_eq]
#print axioms zeroTargets405_eq
end InitECandidate.Proofs.BackendStages
