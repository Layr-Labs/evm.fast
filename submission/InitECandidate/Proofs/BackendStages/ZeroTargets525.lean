import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded525
import InitECandidate.Proofs.BackendStages.ZeroData525
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets525_eq : Padded525.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys525 := by
  with_unfolding_all rfl
theorem zeroTargets525_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded525 acc = ZeroData.keys525.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets525_eq]
#print axioms zeroTargets525_eq
end InitECandidate.Proofs.BackendStages
