import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded495
import InitECandidate.Proofs.BackendStages.ZeroData495
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets495_eq : Padded495.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys495 := by
  with_unfolding_all rfl
theorem zeroTargets495_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded495 acc = ZeroData.keys495.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets495_eq]
#print axioms zeroTargets495_eq
end InitECandidate.Proofs.BackendStages
