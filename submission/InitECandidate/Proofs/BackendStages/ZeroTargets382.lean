import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded382
import InitECandidate.Proofs.BackendStages.ZeroData382
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets382_eq : Padded382.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys382 := by
  with_unfolding_all rfl
theorem zeroTargets382_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded382 acc = ZeroData.keys382.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets382_eq]
#print axioms zeroTargets382_eq
end InitECandidate.Proofs.BackendStages
