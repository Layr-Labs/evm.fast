import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded707
import InitECandidate.Proofs.BackendStages.ZeroData707
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets707_eq : Padded707.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys707 := by
  with_unfolding_all rfl
theorem zeroTargets707_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded707 acc = ZeroData.keys707.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets707_eq]
#print axioms zeroTargets707_eq
end InitECandidate.Proofs.BackendStages
