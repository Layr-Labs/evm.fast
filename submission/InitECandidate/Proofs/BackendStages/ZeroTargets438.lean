import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded438
import InitECandidate.Proofs.BackendStages.ZeroData438
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets438_eq : Padded438.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys438 := by
  with_unfolding_all rfl
theorem zeroTargets438_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded438 acc = ZeroData.keys438.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets438_eq]
#print axioms zeroTargets438_eq
end InitECandidate.Proofs.BackendStages
