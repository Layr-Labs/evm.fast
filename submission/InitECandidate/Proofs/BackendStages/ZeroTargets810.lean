import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded810
import InitECandidate.Proofs.BackendStages.ZeroData810
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets810_eq : Padded810.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys810 := by
  with_unfolding_all rfl
theorem zeroTargets810_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded810 acc = ZeroData.keys810.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets810_eq]
#print axioms zeroTargets810_eq
end InitECandidate.Proofs.BackendStages
