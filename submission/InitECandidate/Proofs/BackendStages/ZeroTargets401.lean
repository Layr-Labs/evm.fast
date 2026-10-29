import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded401
import InitECandidate.Proofs.BackendStages.ZeroData401
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets401_eq : Padded401.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys401 := by
  with_unfolding_all rfl
theorem zeroTargets401_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded401 acc = ZeroData.keys401.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets401_eq]
#print axioms zeroTargets401_eq
end InitECandidate.Proofs.BackendStages
