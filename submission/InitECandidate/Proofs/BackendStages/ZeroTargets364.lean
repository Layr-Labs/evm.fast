import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded364
import InitECandidate.Proofs.BackendStages.ZeroData364
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets364_eq : Padded364.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys364 := by
  with_unfolding_all rfl
theorem zeroTargets364_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded364 acc = ZeroData.keys364.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets364_eq]
#print axioms zeroTargets364_eq
end InitECandidate.Proofs.BackendStages
