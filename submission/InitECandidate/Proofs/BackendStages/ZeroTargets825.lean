import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded825
import InitECandidate.Proofs.BackendStages.ZeroData825
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets825_eq : Padded825.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys825 := by
  with_unfolding_all rfl
theorem zeroTargets825_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded825 acc = ZeroData.keys825.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets825_eq]
#print axioms zeroTargets825_eq
end InitECandidate.Proofs.BackendStages
