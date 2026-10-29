import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded271
import InitECandidate.Proofs.BackendStages.ZeroData271
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets271_eq : Padded271.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys271 := by
  with_unfolding_all rfl
theorem zeroTargets271_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded271 acc = ZeroData.keys271.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets271_eq]
#print axioms zeroTargets271_eq
end InitECandidate.Proofs.BackendStages
