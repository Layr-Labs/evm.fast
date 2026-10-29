import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded774
import InitECandidate.Proofs.BackendStages.ZeroData774
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets774_eq : Padded774.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys774 := by
  with_unfolding_all rfl
theorem zeroTargets774_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded774 acc = ZeroData.keys774.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets774_eq]
#print axioms zeroTargets774_eq
end InitECandidate.Proofs.BackendStages
