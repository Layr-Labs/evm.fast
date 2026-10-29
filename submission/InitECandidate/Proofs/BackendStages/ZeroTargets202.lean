import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded202
import InitECandidate.Proofs.BackendStages.ZeroData202
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets202_eq : Padded202.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys202 := by
  with_unfolding_all rfl
theorem zeroTargets202_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded202 acc = ZeroData.keys202.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets202_eq]
#print axioms zeroTargets202_eq
end InitECandidate.Proofs.BackendStages
