import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded367
import InitECandidate.Proofs.BackendStages.ZeroData367
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets367_eq : Padded367.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys367 := by
  with_unfolding_all rfl
theorem zeroTargets367_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded367 acc = ZeroData.keys367.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets367_eq]
#print axioms zeroTargets367_eq
end InitECandidate.Proofs.BackendStages
