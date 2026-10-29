import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded340
import InitECandidate.Proofs.BackendStages.ZeroData340
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets340_eq : Padded340.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys340 := by
  with_unfolding_all rfl
theorem zeroTargets340_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded340 acc = ZeroData.keys340.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets340_eq]
#print axioms zeroTargets340_eq
end InitECandidate.Proofs.BackendStages
