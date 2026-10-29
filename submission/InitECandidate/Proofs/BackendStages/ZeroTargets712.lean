import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded712
import InitECandidate.Proofs.BackendStages.ZeroData712
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets712_eq : Padded712.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys712 := by
  with_unfolding_all rfl
theorem zeroTargets712_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded712 acc = ZeroData.keys712.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets712_eq]
#print axioms zeroTargets712_eq
end InitECandidate.Proofs.BackendStages
