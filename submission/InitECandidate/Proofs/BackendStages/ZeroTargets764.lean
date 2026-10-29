import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded764
import InitECandidate.Proofs.BackendStages.ZeroData764
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets764_eq : Padded764.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys764 := by
  with_unfolding_all rfl
theorem zeroTargets764_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded764 acc = ZeroData.keys764.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets764_eq]
#print axioms zeroTargets764_eq
end InitECandidate.Proofs.BackendStages
