import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded352
import InitECandidate.Proofs.BackendStages.ZeroData352
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets352_eq : Padded352.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys352 := by
  with_unfolding_all rfl
theorem zeroTargets352_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded352 acc = ZeroData.keys352.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets352_eq]
#print axioms zeroTargets352_eq
end InitECandidate.Proofs.BackendStages
