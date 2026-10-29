import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded856
import InitECandidate.Proofs.BackendStages.ZeroData856
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets856_eq : Padded856.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys856 := by
  with_unfolding_all rfl
theorem zeroTargets856_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded856 acc = ZeroData.keys856.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets856_eq]
#print axioms zeroTargets856_eq
end InitECandidate.Proofs.BackendStages
