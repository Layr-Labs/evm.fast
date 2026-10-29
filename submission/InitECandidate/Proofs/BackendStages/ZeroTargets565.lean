import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded565
import InitECandidate.Proofs.BackendStages.ZeroData565
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets565_eq : Padded565.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys565 := by
  with_unfolding_all rfl
theorem zeroTargets565_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded565 acc = ZeroData.keys565.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets565_eq]
#print axioms zeroTargets565_eq
end InitECandidate.Proofs.BackendStages
