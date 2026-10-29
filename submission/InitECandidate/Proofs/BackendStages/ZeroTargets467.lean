import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded467
import InitECandidate.Proofs.BackendStages.ZeroData467
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets467_eq : Padded467.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys467 := by
  with_unfolding_all rfl
theorem zeroTargets467_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded467 acc = ZeroData.keys467.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets467_eq]
#print axioms zeroTargets467_eq
end InitECandidate.Proofs.BackendStages
