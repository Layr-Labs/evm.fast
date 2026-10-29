import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded98
import InitECandidate.Proofs.BackendStages.ZeroData98
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets98_eq : Padded98.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys98 := by
  with_unfolding_all rfl
theorem zeroTargets98_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded98 acc = ZeroData.keys98.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets98_eq]
#print axioms zeroTargets98_eq
end InitECandidate.Proofs.BackendStages
