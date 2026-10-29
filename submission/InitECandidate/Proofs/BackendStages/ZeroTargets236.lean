import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded236
import InitECandidate.Proofs.BackendStages.ZeroData236
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets236_eq : Padded236.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys236 := by
  with_unfolding_all rfl
theorem zeroTargets236_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded236 acc = ZeroData.keys236.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets236_eq]
#print axioms zeroTargets236_eq
end InitECandidate.Proofs.BackendStages
