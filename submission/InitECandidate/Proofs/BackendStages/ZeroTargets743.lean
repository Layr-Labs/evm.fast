import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded743
import InitECandidate.Proofs.BackendStages.ZeroData743
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets743_eq : Padded743.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys743 := by
  with_unfolding_all rfl
theorem zeroTargets743_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded743 acc = ZeroData.keys743.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets743_eq]
#print axioms zeroTargets743_eq
end InitECandidate.Proofs.BackendStages
