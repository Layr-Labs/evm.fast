import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded783
import InitECandidate.Proofs.BackendStages.ZeroData783
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets783_eq : Padded783.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys783 := by
  with_unfolding_all rfl
theorem zeroTargets783_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded783 acc = ZeroData.keys783.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets783_eq]
#print axioms zeroTargets783_eq
end InitECandidate.Proofs.BackendStages
