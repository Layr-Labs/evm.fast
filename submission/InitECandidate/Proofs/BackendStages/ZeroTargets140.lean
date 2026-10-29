import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded140
import InitECandidate.Proofs.BackendStages.ZeroData140
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets140_eq : Padded140.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys140 := by
  with_unfolding_all rfl
theorem zeroTargets140_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded140 acc = ZeroData.keys140.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets140_eq]
#print axioms zeroTargets140_eq
end InitECandidate.Proofs.BackendStages
