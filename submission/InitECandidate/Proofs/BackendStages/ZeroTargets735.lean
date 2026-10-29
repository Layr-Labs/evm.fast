import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded735
import InitECandidate.Proofs.BackendStages.ZeroData735
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets735_eq : Padded735.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys735 := by
  with_unfolding_all rfl
theorem zeroTargets735_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded735 acc = ZeroData.keys735.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets735_eq]
#print axioms zeroTargets735_eq
end InitECandidate.Proofs.BackendStages
