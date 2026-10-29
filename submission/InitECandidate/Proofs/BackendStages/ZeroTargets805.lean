import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded805
import InitECandidate.Proofs.BackendStages.ZeroData805
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets805_eq : Padded805.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys805 := by
  with_unfolding_all rfl
theorem zeroTargets805_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded805 acc = ZeroData.keys805.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets805_eq]
#print axioms zeroTargets805_eq
end InitECandidate.Proofs.BackendStages
