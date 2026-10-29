import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded332
import InitECandidate.Proofs.BackendStages.ZeroData332
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets332_eq : Padded332.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys332 := by
  with_unfolding_all rfl
theorem zeroTargets332_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded332 acc = ZeroData.keys332.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets332_eq]
#print axioms zeroTargets332_eq
end InitECandidate.Proofs.BackendStages
