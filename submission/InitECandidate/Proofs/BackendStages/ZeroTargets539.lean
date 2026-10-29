import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded539
import InitECandidate.Proofs.BackendStages.ZeroData539
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets539_eq : Padded539.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys539 := by
  with_unfolding_all rfl
theorem zeroTargets539_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded539 acc = ZeroData.keys539.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets539_eq]
#print axioms zeroTargets539_eq
end InitECandidate.Proofs.BackendStages
