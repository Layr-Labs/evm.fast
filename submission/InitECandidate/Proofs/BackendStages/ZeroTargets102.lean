import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded102
import InitECandidate.Proofs.BackendStages.ZeroData102
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets102_eq : Padded102.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys102 := by
  with_unfolding_all rfl
theorem zeroTargets102_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded102 acc = ZeroData.keys102.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets102_eq]
#print axioms zeroTargets102_eq
end InitECandidate.Proofs.BackendStages
