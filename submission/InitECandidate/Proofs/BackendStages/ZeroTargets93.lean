import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded93
import InitECandidate.Proofs.BackendStages.ZeroData93
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets93_eq : Padded93.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys93 := by
  with_unfolding_all rfl
theorem zeroTargets93_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded93 acc = ZeroData.keys93.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets93_eq]
#print axioms zeroTargets93_eq
end InitECandidate.Proofs.BackendStages
