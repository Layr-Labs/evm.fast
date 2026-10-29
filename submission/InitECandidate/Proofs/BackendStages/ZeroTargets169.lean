import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded169
import InitECandidate.Proofs.BackendStages.ZeroData169
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets169_eq : Padded169.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys169 := by
  with_unfolding_all rfl
theorem zeroTargets169_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded169 acc = ZeroData.keys169.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets169_eq]
#print axioms zeroTargets169_eq
end InitECandidate.Proofs.BackendStages
