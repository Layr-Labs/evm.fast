import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded580
import InitECandidate.Proofs.BackendStages.ZeroData580
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets580_eq : Padded580.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys580 := by
  with_unfolding_all rfl
theorem zeroTargets580_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded580 acc = ZeroData.keys580.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets580_eq]
#print axioms zeroTargets580_eq
end InitECandidate.Proofs.BackendStages
