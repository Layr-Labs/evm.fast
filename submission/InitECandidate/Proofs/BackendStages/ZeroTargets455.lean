import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded455
import InitECandidate.Proofs.BackendStages.ZeroData455
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets455_eq : Padded455.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys455 := by
  with_unfolding_all rfl
theorem zeroTargets455_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded455 acc = ZeroData.keys455.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets455_eq]
#print axioms zeroTargets455_eq
end InitECandidate.Proofs.BackendStages
