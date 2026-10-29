import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded189
import InitECandidate.Proofs.BackendStages.ZeroData189
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets189_eq : Padded189.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys189 := by
  with_unfolding_all rfl
theorem zeroTargets189_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded189 acc = ZeroData.keys189.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets189_eq]
#print axioms zeroTargets189_eq
end InitECandidate.Proofs.BackendStages
