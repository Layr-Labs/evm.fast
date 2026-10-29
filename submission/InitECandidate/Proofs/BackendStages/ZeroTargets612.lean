import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded612
import InitECandidate.Proofs.BackendStages.ZeroData612
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets612_eq : Padded612.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys612 := by
  with_unfolding_all rfl
theorem zeroTargets612_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded612 acc = ZeroData.keys612.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets612_eq]
#print axioms zeroTargets612_eq
end InitECandidate.Proofs.BackendStages
