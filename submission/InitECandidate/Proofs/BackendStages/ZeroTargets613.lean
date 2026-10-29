import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded613
import InitECandidate.Proofs.BackendStages.ZeroData613
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets613_eq : Padded613.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys613 := by
  with_unfolding_all rfl
theorem zeroTargets613_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded613 acc = ZeroData.keys613.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets613_eq]
#print axioms zeroTargets613_eq
end InitECandidate.Proofs.BackendStages
