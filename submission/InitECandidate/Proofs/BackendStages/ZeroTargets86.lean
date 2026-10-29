import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded86
import InitECandidate.Proofs.BackendStages.ZeroData86
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets86_eq : Padded86.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys86 := by
  with_unfolding_all rfl
theorem zeroTargets86_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded86 acc = ZeroData.keys86.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets86_eq]
#print axioms zeroTargets86_eq
end InitECandidate.Proofs.BackendStages
