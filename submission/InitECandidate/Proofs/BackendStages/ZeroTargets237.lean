import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded237
import InitECandidate.Proofs.BackendStages.ZeroData237
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets237_eq : Padded237.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys237 := by
  with_unfolding_all rfl
theorem zeroTargets237_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded237 acc = ZeroData.keys237.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets237_eq]
#print axioms zeroTargets237_eq
end InitECandidate.Proofs.BackendStages
