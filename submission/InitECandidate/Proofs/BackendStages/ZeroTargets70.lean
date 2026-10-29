import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded70
import InitECandidate.Proofs.BackendStages.ZeroData70
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets70_eq : Padded70.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys70 := by
  with_unfolding_all rfl
theorem zeroTargets70_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded70 acc = ZeroData.keys70.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets70_eq]
#print axioms zeroTargets70_eq
end InitECandidate.Proofs.BackendStages
