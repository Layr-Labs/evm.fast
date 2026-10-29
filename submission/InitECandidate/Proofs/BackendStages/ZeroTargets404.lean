import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded404
import InitECandidate.Proofs.BackendStages.ZeroData404
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets404_eq : Padded404.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys404 := by
  with_unfolding_all rfl
theorem zeroTargets404_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded404 acc = ZeroData.keys404.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets404_eq]
#print axioms zeroTargets404_eq
end InitECandidate.Proofs.BackendStages
