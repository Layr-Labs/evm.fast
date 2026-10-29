import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded871
import InitECandidate.Proofs.BackendStages.ZeroData871
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets871_eq : Padded871.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys871 := by
  with_unfolding_all rfl
theorem zeroTargets871_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded871 acc = ZeroData.keys871.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets871_eq]
#print axioms zeroTargets871_eq
end InitECandidate.Proofs.BackendStages
