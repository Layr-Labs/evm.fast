import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded832
import InitECandidate.Proofs.BackendStages.ZeroData832
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets832_eq : Padded832.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys832 := by
  with_unfolding_all rfl
theorem zeroTargets832_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded832 acc = ZeroData.keys832.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets832_eq]
#print axioms zeroTargets832_eq
end InitECandidate.Proofs.BackendStages
