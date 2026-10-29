import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded544
import InitECandidate.Proofs.BackendStages.ZeroData544
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets544_eq : Padded544.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys544 := by
  with_unfolding_all rfl
theorem zeroTargets544_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded544 acc = ZeroData.keys544.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets544_eq]
#print axioms zeroTargets544_eq
end InitECandidate.Proofs.BackendStages
