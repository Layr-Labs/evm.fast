import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded843
import InitECandidate.Proofs.BackendStages.ZeroData843
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets843_eq : Padded843.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys843 := by
  with_unfolding_all rfl
theorem zeroTargets843_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded843 acc = ZeroData.keys843.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets843_eq]
#print axioms zeroTargets843_eq
end InitECandidate.Proofs.BackendStages
