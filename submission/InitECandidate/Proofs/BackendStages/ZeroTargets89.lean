import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded89
import InitECandidate.Proofs.BackendStages.ZeroData89
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets89_eq : Padded89.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys89 := by
  with_unfolding_all rfl
theorem zeroTargets89_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded89 acc = ZeroData.keys89.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets89_eq]
#print axioms zeroTargets89_eq
end InitECandidate.Proofs.BackendStages
