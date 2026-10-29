import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded218
import InitECandidate.Proofs.BackendStages.ZeroData218
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets218_eq : Padded218.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys218 := by
  with_unfolding_all rfl
theorem zeroTargets218_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded218 acc = ZeroData.keys218.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets218_eq]
#print axioms zeroTargets218_eq
end InitECandidate.Proofs.BackendStages
