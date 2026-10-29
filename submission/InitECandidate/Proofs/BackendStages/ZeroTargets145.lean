import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded145
import InitECandidate.Proofs.BackendStages.ZeroData145
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets145_eq : Padded145.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys145 := by
  with_unfolding_all rfl
theorem zeroTargets145_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded145 acc = ZeroData.keys145.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets145_eq]
#print axioms zeroTargets145_eq
end InitECandidate.Proofs.BackendStages
