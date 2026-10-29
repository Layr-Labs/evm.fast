import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded441
import InitECandidate.Proofs.BackendStages.ZeroData441
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets441_eq : Padded441.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys441 := by
  with_unfolding_all rfl
theorem zeroTargets441_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded441 acc = ZeroData.keys441.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets441_eq]
#print axioms zeroTargets441_eq
end InitECandidate.Proofs.BackendStages
