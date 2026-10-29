import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded637
import InitECandidate.Proofs.BackendStages.ZeroData637
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets637_eq : Padded637.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys637 := by
  with_unfolding_all rfl
theorem zeroTargets637_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded637 acc = ZeroData.keys637.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets637_eq]
#print axioms zeroTargets637_eq
end InitECandidate.Proofs.BackendStages
