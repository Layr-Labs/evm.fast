import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded229
import InitECandidate.Proofs.BackendStages.ZeroData229
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets229_eq : Padded229.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys229 := by
  with_unfolding_all rfl
theorem zeroTargets229_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded229 acc = ZeroData.keys229.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets229_eq]
#print axioms zeroTargets229_eq
end InitECandidate.Proofs.BackendStages
