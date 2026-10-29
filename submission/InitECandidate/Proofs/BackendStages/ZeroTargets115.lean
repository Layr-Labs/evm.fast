import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded115
import InitECandidate.Proofs.BackendStages.ZeroData115
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets115_eq : Padded115.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys115 := by
  with_unfolding_all rfl
theorem zeroTargets115_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded115 acc = ZeroData.keys115.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets115_eq]
#print axioms zeroTargets115_eq
end InitECandidate.Proofs.BackendStages
