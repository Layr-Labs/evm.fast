import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded88
import InitECandidate.Proofs.BackendStages.ZeroData88
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets88_eq : Padded88.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys88 := by
  with_unfolding_all rfl
theorem zeroTargets88_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded88 acc = ZeroData.keys88.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets88_eq]
#print axioms zeroTargets88_eq
end InitECandidate.Proofs.BackendStages
