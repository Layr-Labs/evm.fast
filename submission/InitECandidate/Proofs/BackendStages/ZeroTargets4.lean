import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded4
import InitECandidate.Proofs.BackendStages.ZeroData4
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets4_eq : Padded4.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys4 := by
  with_unfolding_all rfl
theorem zeroTargets4_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded4 acc = ZeroData.keys4.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets4_eq]
#print axioms zeroTargets4_eq
end InitECandidate.Proofs.BackendStages
