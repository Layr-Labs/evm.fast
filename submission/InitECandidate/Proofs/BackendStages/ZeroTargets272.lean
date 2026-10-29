import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded272
import InitECandidate.Proofs.BackendStages.ZeroData272
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets272_eq : Padded272.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys272 := by
  with_unfolding_all rfl
theorem zeroTargets272_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded272 acc = ZeroData.keys272.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets272_eq]
#print axioms zeroTargets272_eq
end InitECandidate.Proofs.BackendStages
