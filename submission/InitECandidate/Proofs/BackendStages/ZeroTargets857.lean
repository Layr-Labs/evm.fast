import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded857
import InitECandidate.Proofs.BackendStages.ZeroData857
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets857_eq : Padded857.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys857 := by
  with_unfolding_all rfl
theorem zeroTargets857_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded857 acc = ZeroData.keys857.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets857_eq]
#print axioms zeroTargets857_eq
end InitECandidate.Proofs.BackendStages
