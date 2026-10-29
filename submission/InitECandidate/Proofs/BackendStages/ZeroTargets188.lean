import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded188
import InitECandidate.Proofs.BackendStages.ZeroData188
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets188_eq : Padded188.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys188 := by
  with_unfolding_all rfl
theorem zeroTargets188_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded188 acc = ZeroData.keys188.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets188_eq]
#print axioms zeroTargets188_eq
end InitECandidate.Proofs.BackendStages
