import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded635
import InitECandidate.Proofs.BackendStages.ZeroData635
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets635_eq : Padded635.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys635 := by
  with_unfolding_all rfl
theorem zeroTargets635_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded635 acc = ZeroData.keys635.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets635_eq]
#print axioms zeroTargets635_eq
end InitECandidate.Proofs.BackendStages
