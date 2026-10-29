import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded150
import InitECandidate.Proofs.BackendStages.ZeroData150
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets150_eq : Padded150.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys150 := by
  with_unfolding_all rfl
theorem zeroTargets150_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded150 acc = ZeroData.keys150.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets150_eq]
#print axioms zeroTargets150_eq
end InitECandidate.Proofs.BackendStages
