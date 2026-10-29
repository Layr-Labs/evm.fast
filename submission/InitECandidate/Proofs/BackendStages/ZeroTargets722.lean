import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded722
import InitECandidate.Proofs.BackendStages.ZeroData722
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets722_eq : Padded722.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys722 := by
  with_unfolding_all rfl
theorem zeroTargets722_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded722 acc = ZeroData.keys722.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets722_eq]
#print axioms zeroTargets722_eq
end InitECandidate.Proofs.BackendStages
