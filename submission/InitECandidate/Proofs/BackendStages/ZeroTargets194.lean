import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded194
import InitECandidate.Proofs.BackendStages.ZeroData194
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets194_eq : Padded194.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys194 := by
  with_unfolding_all rfl
theorem zeroTargets194_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded194 acc = ZeroData.keys194.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets194_eq]
#print axioms zeroTargets194_eq
end InitECandidate.Proofs.BackendStages
