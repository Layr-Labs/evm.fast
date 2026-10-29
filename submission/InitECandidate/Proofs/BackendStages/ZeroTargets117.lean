import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded117
import InitECandidate.Proofs.BackendStages.ZeroData117
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets117_eq : Padded117.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys117 := by
  with_unfolding_all rfl
theorem zeroTargets117_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded117 acc = ZeroData.keys117.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets117_eq]
#print axioms zeroTargets117_eq
end InitECandidate.Proofs.BackendStages
