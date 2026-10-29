import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded314
import InitECandidate.Proofs.BackendStages.ZeroData314
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets314_eq : Padded314.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys314 := by
  with_unfolding_all rfl
theorem zeroTargets314_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded314 acc = ZeroData.keys314.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets314_eq]
#print axioms zeroTargets314_eq
end InitECandidate.Proofs.BackendStages
