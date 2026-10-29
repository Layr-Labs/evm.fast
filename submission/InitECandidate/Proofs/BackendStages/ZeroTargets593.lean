import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded593
import InitECandidate.Proofs.BackendStages.ZeroData593
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets593_eq : Padded593.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys593 := by
  with_unfolding_all rfl
theorem zeroTargets593_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded593 acc = ZeroData.keys593.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets593_eq]
#print axioms zeroTargets593_eq
end InitECandidate.Proofs.BackendStages
