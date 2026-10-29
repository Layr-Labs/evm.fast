import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded718
import InitECandidate.Proofs.BackendStages.ZeroData718
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets718_eq : Padded718.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys718 := by
  with_unfolding_all rfl
theorem zeroTargets718_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded718 acc = ZeroData.keys718.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets718_eq]
#print axioms zeroTargets718_eq
end InitECandidate.Proofs.BackendStages
