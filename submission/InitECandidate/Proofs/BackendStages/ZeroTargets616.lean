import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded616
import InitECandidate.Proofs.BackendStages.ZeroData616
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets616_eq : Padded616.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys616 := by
  with_unfolding_all rfl
theorem zeroTargets616_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded616 acc = ZeroData.keys616.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets616_eq]
#print axioms zeroTargets616_eq
end InitECandidate.Proofs.BackendStages
