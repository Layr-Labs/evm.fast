import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded315
import InitECandidate.Proofs.BackendStages.ZeroData315
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets315_eq : Padded315.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys315 := by
  with_unfolding_all rfl
theorem zeroTargets315_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded315 acc = ZeroData.keys315.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets315_eq]
#print axioms zeroTargets315_eq
end InitECandidate.Proofs.BackendStages
