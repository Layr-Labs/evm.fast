import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded657
import InitECandidate.Proofs.BackendStages.ZeroData657
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets657_eq : Padded657.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys657 := by
  with_unfolding_all rfl
theorem zeroTargets657_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded657 acc = ZeroData.keys657.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets657_eq]
#print axioms zeroTargets657_eq
end InitECandidate.Proofs.BackendStages
