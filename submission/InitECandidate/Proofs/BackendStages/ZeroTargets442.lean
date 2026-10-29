import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded442
import InitECandidate.Proofs.BackendStages.ZeroData442
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets442_eq : Padded442.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys442 := by
  with_unfolding_all rfl
theorem zeroTargets442_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded442 acc = ZeroData.keys442.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets442_eq]
#print axioms zeroTargets442_eq
end InitECandidate.Proofs.BackendStages
