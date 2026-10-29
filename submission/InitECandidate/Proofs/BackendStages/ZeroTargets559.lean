import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded559
import InitECandidate.Proofs.BackendStages.ZeroData559
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets559_eq : Padded559.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys559 := by
  with_unfolding_all rfl
theorem zeroTargets559_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded559 acc = ZeroData.keys559.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets559_eq]
#print axioms zeroTargets559_eq
end InitECandidate.Proofs.BackendStages
