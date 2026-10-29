import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded611
import InitECandidate.Proofs.BackendStages.ZeroData611
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets611_eq : Padded611.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys611 := by
  with_unfolding_all rfl
theorem zeroTargets611_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded611 acc = ZeroData.keys611.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets611_eq]
#print axioms zeroTargets611_eq
end InitECandidate.Proofs.BackendStages
