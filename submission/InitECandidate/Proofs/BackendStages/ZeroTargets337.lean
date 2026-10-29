import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded337
import InitECandidate.Proofs.BackendStages.ZeroData337
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets337_eq : Padded337.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys337 := by
  with_unfolding_all rfl
theorem zeroTargets337_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded337 acc = ZeroData.keys337.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets337_eq]
#print axioms zeroTargets337_eq
end InitECandidate.Proofs.BackendStages
