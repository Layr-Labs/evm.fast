import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded353
import InitECandidate.Proofs.BackendStages.ZeroData353
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets353_eq : Padded353.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys353 := by
  with_unfolding_all rfl
theorem zeroTargets353_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded353 acc = ZeroData.keys353.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets353_eq]
#print axioms zeroTargets353_eq
end InitECandidate.Proofs.BackendStages
