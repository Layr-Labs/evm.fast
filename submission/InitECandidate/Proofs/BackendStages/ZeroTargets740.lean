import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded740
import InitECandidate.Proofs.BackendStages.ZeroData740
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets740_eq : Padded740.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys740 := by
  with_unfolding_all rfl
theorem zeroTargets740_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded740 acc = ZeroData.keys740.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets740_eq]
#print axioms zeroTargets740_eq
end InitECandidate.Proofs.BackendStages
