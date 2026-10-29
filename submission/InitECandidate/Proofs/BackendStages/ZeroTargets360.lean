import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded360
import InitECandidate.Proofs.BackendStages.ZeroData360
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets360_eq : Padded360.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys360 := by
  with_unfolding_all rfl
theorem zeroTargets360_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded360 acc = ZeroData.keys360.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets360_eq]
#print axioms zeroTargets360_eq
end InitECandidate.Proofs.BackendStages
