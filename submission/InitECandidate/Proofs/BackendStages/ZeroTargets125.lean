import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded125
import InitECandidate.Proofs.BackendStages.ZeroData125
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets125_eq : Padded125.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys125 := by
  with_unfolding_all rfl
theorem zeroTargets125_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded125 acc = ZeroData.keys125.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets125_eq]
#print axioms zeroTargets125_eq
end InitECandidate.Proofs.BackendStages
