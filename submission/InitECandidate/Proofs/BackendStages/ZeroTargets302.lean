import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded302
import InitECandidate.Proofs.BackendStages.ZeroData302
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets302_eq : Padded302.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys302 := by
  with_unfolding_all rfl
theorem zeroTargets302_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded302 acc = ZeroData.keys302.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets302_eq]
#print axioms zeroTargets302_eq
end InitECandidate.Proofs.BackendStages
