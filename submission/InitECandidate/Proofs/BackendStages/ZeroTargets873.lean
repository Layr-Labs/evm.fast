import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded873
import InitECandidate.Proofs.BackendStages.ZeroData873
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets873_eq : Padded873.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys873 := by
  with_unfolding_all rfl
theorem zeroTargets873_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded873 acc = ZeroData.keys873.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets873_eq]
#print axioms zeroTargets873_eq
end InitECandidate.Proofs.BackendStages
