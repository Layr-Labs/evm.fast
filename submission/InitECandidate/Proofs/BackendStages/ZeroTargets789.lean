import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded789
import InitECandidate.Proofs.BackendStages.ZeroData789
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets789_eq : Padded789.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys789 := by
  with_unfolding_all rfl
theorem zeroTargets789_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded789 acc = ZeroData.keys789.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets789_eq]
#print axioms zeroTargets789_eq
end InitECandidate.Proofs.BackendStages
