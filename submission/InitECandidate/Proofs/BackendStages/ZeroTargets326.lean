import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded326
import InitECandidate.Proofs.BackendStages.ZeroData326
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets326_eq : Padded326.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys326 := by
  with_unfolding_all rfl
theorem zeroTargets326_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded326 acc = ZeroData.keys326.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets326_eq]
#print axioms zeroTargets326_eq
end InitECandidate.Proofs.BackendStages
