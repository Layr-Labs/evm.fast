import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded297
import InitECandidate.Proofs.BackendStages.ZeroData297
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets297_eq : Padded297.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys297 := by
  with_unfolding_all rfl
theorem zeroTargets297_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded297 acc = ZeroData.keys297.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets297_eq]
#print axioms zeroTargets297_eq
end InitECandidate.Proofs.BackendStages
