import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded350
import InitECandidate.Proofs.BackendStages.ZeroData350
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets350_eq : Padded350.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys350 := by
  with_unfolding_all rfl
theorem zeroTargets350_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded350 acc = ZeroData.keys350.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets350_eq]
#print axioms zeroTargets350_eq
end InitECandidate.Proofs.BackendStages
