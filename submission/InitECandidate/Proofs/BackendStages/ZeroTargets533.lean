import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded533
import InitECandidate.Proofs.BackendStages.ZeroData533
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets533_eq : Padded533.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys533 := by
  with_unfolding_all rfl
theorem zeroTargets533_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded533 acc = ZeroData.keys533.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets533_eq]
#print axioms zeroTargets533_eq
end InitECandidate.Proofs.BackendStages
