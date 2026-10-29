import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded281
import InitECandidate.Proofs.BackendStages.ZeroData281
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets281_eq : Padded281.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys281 := by
  with_unfolding_all rfl
theorem zeroTargets281_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded281 acc = ZeroData.keys281.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets281_eq]
#print axioms zeroTargets281_eq
end InitECandidate.Proofs.BackendStages
