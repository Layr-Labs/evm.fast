import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded553
import InitECandidate.Proofs.BackendStages.ZeroData553
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets553_eq : Padded553.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys553 := by
  with_unfolding_all rfl
theorem zeroTargets553_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded553 acc = ZeroData.keys553.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets553_eq]
#print axioms zeroTargets553_eq
end InitECandidate.Proofs.BackendStages
