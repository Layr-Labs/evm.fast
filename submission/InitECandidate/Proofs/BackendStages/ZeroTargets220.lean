import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded220
import InitECandidate.Proofs.BackendStages.ZeroData220
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets220_eq : Padded220.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys220 := by
  with_unfolding_all rfl
theorem zeroTargets220_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded220 acc = ZeroData.keys220.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets220_eq]
#print axioms zeroTargets220_eq
end InitECandidate.Proofs.BackendStages
