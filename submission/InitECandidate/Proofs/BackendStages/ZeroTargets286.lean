import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded286
import InitECandidate.Proofs.BackendStages.ZeroData286
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets286_eq : Padded286.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys286 := by
  with_unfolding_all rfl
theorem zeroTargets286_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded286 acc = ZeroData.keys286.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets286_eq]
#print axioms zeroTargets286_eq
end InitECandidate.Proofs.BackendStages
