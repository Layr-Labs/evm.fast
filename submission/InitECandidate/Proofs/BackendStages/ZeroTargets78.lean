import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded78
import InitECandidate.Proofs.BackendStages.ZeroData78
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets78_eq : Padded78.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys78 := by
  with_unfolding_all rfl
theorem zeroTargets78_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded78 acc = ZeroData.keys78.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets78_eq]
#print axioms zeroTargets78_eq
end InitECandidate.Proofs.BackendStages
