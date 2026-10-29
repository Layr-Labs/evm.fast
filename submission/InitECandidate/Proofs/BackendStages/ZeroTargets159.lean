import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded159
import InitECandidate.Proofs.BackendStages.ZeroData159
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets159_eq : Padded159.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys159 := by
  with_unfolding_all rfl
theorem zeroTargets159_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded159 acc = ZeroData.keys159.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets159_eq]
#print axioms zeroTargets159_eq
end InitECandidate.Proofs.BackendStages
