import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded1
import InitECandidate.Proofs.BackendStages.ZeroData1
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets1_eq : Padded1.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys1 := by
  with_unfolding_all rfl
theorem zeroTargets1_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded1 acc = ZeroData.keys1.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets1_eq]
#print axioms zeroTargets1_eq
end InitECandidate.Proofs.BackendStages
