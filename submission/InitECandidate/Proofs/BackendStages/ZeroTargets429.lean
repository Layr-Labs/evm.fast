import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded429
import InitECandidate.Proofs.BackendStages.ZeroData429
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets429_eq : Padded429.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys429 := by
  with_unfolding_all rfl
theorem zeroTargets429_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded429 acc = ZeroData.keys429.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets429_eq]
#print axioms zeroTargets429_eq
end InitECandidate.Proofs.BackendStages
