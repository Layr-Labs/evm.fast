import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded147
import InitECandidate.Proofs.BackendStages.ZeroData147
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets147_eq : Padded147.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys147 := by
  with_unfolding_all rfl
theorem zeroTargets147_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded147 acc = ZeroData.keys147.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets147_eq]
#print axioms zeroTargets147_eq
end InitECandidate.Proofs.BackendStages
