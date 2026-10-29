import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded279
import InitECandidate.Proofs.BackendStages.ZeroData279
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets279_eq : Padded279.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys279 := by
  with_unfolding_all rfl
theorem zeroTargets279_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded279 acc = ZeroData.keys279.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets279_eq]
#print axioms zeroTargets279_eq
end InitECandidate.Proofs.BackendStages
