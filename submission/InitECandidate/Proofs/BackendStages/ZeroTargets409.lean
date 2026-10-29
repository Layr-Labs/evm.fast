import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded409
import InitECandidate.Proofs.BackendStages.ZeroData409
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets409_eq : Padded409.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys409 := by
  with_unfolding_all rfl
theorem zeroTargets409_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded409 acc = ZeroData.keys409.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets409_eq]
#print axioms zeroTargets409_eq
end InitECandidate.Proofs.BackendStages
