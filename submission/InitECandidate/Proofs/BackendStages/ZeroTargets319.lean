import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded319
import InitECandidate.Proofs.BackendStages.ZeroData319
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets319_eq : Padded319.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys319 := by
  with_unfolding_all rfl
theorem zeroTargets319_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded319 acc = ZeroData.keys319.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets319_eq]
#print axioms zeroTargets319_eq
end InitECandidate.Proofs.BackendStages
