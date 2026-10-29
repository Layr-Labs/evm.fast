import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded550
import InitECandidate.Proofs.BackendStages.ZeroData550
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets550_eq : Padded550.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys550 := by
  with_unfolding_all rfl
theorem zeroTargets550_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded550 acc = ZeroData.keys550.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets550_eq]
#print axioms zeroTargets550_eq
end InitECandidate.Proofs.BackendStages
