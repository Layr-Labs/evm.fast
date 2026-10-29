import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded798
import InitECandidate.Proofs.BackendStages.ZeroData798
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets798_eq : Padded798.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys798 := by
  with_unfolding_all rfl
theorem zeroTargets798_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded798 acc = ZeroData.keys798.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets798_eq]
#print axioms zeroTargets798_eq
end InitECandidate.Proofs.BackendStages
