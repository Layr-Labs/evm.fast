import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded744
import InitECandidate.Proofs.BackendStages.ZeroData744
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets744_eq : Padded744.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys744 := by
  with_unfolding_all rfl
theorem zeroTargets744_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded744 acc = ZeroData.keys744.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets744_eq]
#print axioms zeroTargets744_eq
end InitECandidate.Proofs.BackendStages
