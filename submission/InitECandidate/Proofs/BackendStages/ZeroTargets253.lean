import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded253
import InitECandidate.Proofs.BackendStages.ZeroData253
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets253_eq : Padded253.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys253 := by
  with_unfolding_all rfl
theorem zeroTargets253_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded253 acc = ZeroData.keys253.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets253_eq]
#print axioms zeroTargets253_eq
end InitECandidate.Proofs.BackendStages
