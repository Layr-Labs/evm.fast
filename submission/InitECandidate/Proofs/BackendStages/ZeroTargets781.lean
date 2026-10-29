import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded781
import InitECandidate.Proofs.BackendStages.ZeroData781
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets781_eq : Padded781.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys781 := by
  with_unfolding_all rfl
theorem zeroTargets781_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded781 acc = ZeroData.keys781.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets781_eq]
#print axioms zeroTargets781_eq
end InitECandidate.Proofs.BackendStages
