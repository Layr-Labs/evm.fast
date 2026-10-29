import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded414
import InitECandidate.Proofs.BackendStages.ZeroData414
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets414_eq : Padded414.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys414 := by
  with_unfolding_all rfl
theorem zeroTargets414_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded414 acc = ZeroData.keys414.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets414_eq]
#print axioms zeroTargets414_eq
end InitECandidate.Proofs.BackendStages
