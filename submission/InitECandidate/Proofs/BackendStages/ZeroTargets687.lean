import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded687
import InitECandidate.Proofs.BackendStages.ZeroData687
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets687_eq : Padded687.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys687 := by
  with_unfolding_all rfl
theorem zeroTargets687_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded687 acc = ZeroData.keys687.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets687_eq]
#print axioms zeroTargets687_eq
end InitECandidate.Proofs.BackendStages
