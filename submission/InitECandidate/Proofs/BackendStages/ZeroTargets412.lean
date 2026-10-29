import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded412
import InitECandidate.Proofs.BackendStages.ZeroData412
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets412_eq : Padded412.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys412 := by
  with_unfolding_all rfl
theorem zeroTargets412_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded412 acc = ZeroData.keys412.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets412_eq]
#print axioms zeroTargets412_eq
end InitECandidate.Proofs.BackendStages
