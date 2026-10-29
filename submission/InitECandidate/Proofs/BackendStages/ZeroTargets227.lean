import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded227
import InitECandidate.Proofs.BackendStages.ZeroData227
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets227_eq : Padded227.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys227 := by
  with_unfolding_all rfl
theorem zeroTargets227_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded227 acc = ZeroData.keys227.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets227_eq]
#print axioms zeroTargets227_eq
end InitECandidate.Proofs.BackendStages
