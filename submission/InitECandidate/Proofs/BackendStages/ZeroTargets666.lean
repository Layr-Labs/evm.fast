import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded666
import InitECandidate.Proofs.BackendStages.ZeroData666
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets666_eq : Padded666.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys666 := by
  with_unfolding_all rfl
theorem zeroTargets666_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded666 acc = ZeroData.keys666.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets666_eq]
#print axioms zeroTargets666_eq
end InitECandidate.Proofs.BackendStages
