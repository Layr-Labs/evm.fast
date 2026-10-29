import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded669
import InitECandidate.Proofs.BackendStages.ZeroData669
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets669_eq : Padded669.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys669 := by
  with_unfolding_all rfl
theorem zeroTargets669_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded669 acc = ZeroData.keys669.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets669_eq]
#print axioms zeroTargets669_eq
end InitECandidate.Proofs.BackendStages
