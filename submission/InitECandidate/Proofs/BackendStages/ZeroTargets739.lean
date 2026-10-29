import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded739
import InitECandidate.Proofs.BackendStages.ZeroData739
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets739_eq : Padded739.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys739 := by
  with_unfolding_all rfl
theorem zeroTargets739_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded739 acc = ZeroData.keys739.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets739_eq]
#print axioms zeroTargets739_eq
end InitECandidate.Proofs.BackendStages
