import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded373
import InitECandidate.Proofs.BackendStages.ZeroData373
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets373_eq : Padded373.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys373 := by
  with_unfolding_all rfl
theorem zeroTargets373_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded373 acc = ZeroData.keys373.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets373_eq]
#print axioms zeroTargets373_eq
end InitECandidate.Proofs.BackendStages
