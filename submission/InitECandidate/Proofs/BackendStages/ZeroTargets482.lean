import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded482
import InitECandidate.Proofs.BackendStages.ZeroData482
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets482_eq : Padded482.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys482 := by
  with_unfolding_all rfl
theorem zeroTargets482_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded482 acc = ZeroData.keys482.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets482_eq]
#print axioms zeroTargets482_eq
end InitECandidate.Proofs.BackendStages
