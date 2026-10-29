import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded162
import InitECandidate.Proofs.BackendStages.ZeroData162
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets162_eq : Padded162.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys162 := by
  with_unfolding_all rfl
theorem zeroTargets162_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded162 acc = ZeroData.keys162.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets162_eq]
#print axioms zeroTargets162_eq
end InitECandidate.Proofs.BackendStages
