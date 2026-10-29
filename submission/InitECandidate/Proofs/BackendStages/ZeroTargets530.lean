import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded530
import InitECandidate.Proofs.BackendStages.ZeroData530
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets530_eq : Padded530.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys530 := by
  with_unfolding_all rfl
theorem zeroTargets530_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded530 acc = ZeroData.keys530.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets530_eq]
#print axioms zeroTargets530_eq
end InitECandidate.Proofs.BackendStages
