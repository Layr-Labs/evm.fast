import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded738
import InitECandidate.Proofs.BackendStages.ZeroData738
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets738_eq : Padded738.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys738 := by
  with_unfolding_all rfl
theorem zeroTargets738_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded738 acc = ZeroData.keys738.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets738_eq]
#print axioms zeroTargets738_eq
end InitECandidate.Proofs.BackendStages
