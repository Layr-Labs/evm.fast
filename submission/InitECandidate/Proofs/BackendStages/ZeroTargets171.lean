import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded171
import InitECandidate.Proofs.BackendStages.ZeroData171
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets171_eq : Padded171.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys171 := by
  with_unfolding_all rfl
theorem zeroTargets171_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded171 acc = ZeroData.keys171.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets171_eq]
#print axioms zeroTargets171_eq
end InitECandidate.Proofs.BackendStages
