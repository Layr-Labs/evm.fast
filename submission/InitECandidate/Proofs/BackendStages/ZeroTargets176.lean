import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded176
import InitECandidate.Proofs.BackendStages.ZeroData176
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets176_eq : Padded176.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys176 := by
  with_unfolding_all rfl
theorem zeroTargets176_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded176 acc = ZeroData.keys176.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets176_eq]
#print axioms zeroTargets176_eq
end InitECandidate.Proofs.BackendStages
