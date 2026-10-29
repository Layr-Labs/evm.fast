import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded252
import InitECandidate.Proofs.BackendStages.ZeroData252
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets252_eq : Padded252.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys252 := by
  with_unfolding_all rfl
theorem zeroTargets252_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded252 acc = ZeroData.keys252.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets252_eq]
#print axioms zeroTargets252_eq
end InitECandidate.Proofs.BackendStages
