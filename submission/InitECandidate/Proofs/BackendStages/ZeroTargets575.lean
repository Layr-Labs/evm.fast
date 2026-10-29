import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded575
import InitECandidate.Proofs.BackendStages.ZeroData575
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets575_eq : Padded575.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys575 := by
  with_unfolding_all rfl
theorem zeroTargets575_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded575 acc = ZeroData.keys575.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets575_eq]
#print axioms zeroTargets575_eq
end InitECandidate.Proofs.BackendStages
