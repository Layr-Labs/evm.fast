import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded454
import InitECandidate.Proofs.BackendStages.ZeroData454
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets454_eq : Padded454.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys454 := by
  with_unfolding_all rfl
theorem zeroTargets454_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded454 acc = ZeroData.keys454.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets454_eq]
#print axioms zeroTargets454_eq
end InitECandidate.Proofs.BackendStages
