import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded546
import InitECandidate.Proofs.BackendStages.ZeroData546
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets546_eq : Padded546.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys546 := by
  with_unfolding_all rfl
theorem zeroTargets546_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded546 acc = ZeroData.keys546.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets546_eq]
#print axioms zeroTargets546_eq
end InitECandidate.Proofs.BackendStages
