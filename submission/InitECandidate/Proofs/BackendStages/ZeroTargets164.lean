import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded164
import InitECandidate.Proofs.BackendStages.ZeroData164
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets164_eq : Padded164.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys164 := by
  with_unfolding_all rfl
theorem zeroTargets164_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded164 acc = ZeroData.keys164.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets164_eq]
#print axioms zeroTargets164_eq
end InitECandidate.Proofs.BackendStages
