import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded320
import InitECandidate.Proofs.BackendStages.ZeroData320
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets320_eq : Padded320.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys320 := by
  with_unfolding_all rfl
theorem zeroTargets320_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded320 acc = ZeroData.keys320.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets320_eq]
#print axioms zeroTargets320_eq
end InitECandidate.Proofs.BackendStages
