import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded254
import InitECandidate.Proofs.BackendStages.ZeroData254
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets254_eq : Padded254.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys254 := by
  with_unfolding_all rfl
theorem zeroTargets254_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded254 acc = ZeroData.keys254.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets254_eq]
#print axioms zeroTargets254_eq
end InitECandidate.Proofs.BackendStages
