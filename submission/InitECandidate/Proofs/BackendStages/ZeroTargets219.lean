import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded219
import InitECandidate.Proofs.BackendStages.ZeroData219
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets219_eq : Padded219.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys219 := by
  with_unfolding_all rfl
theorem zeroTargets219_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded219 acc = ZeroData.keys219.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets219_eq]
#print axioms zeroTargets219_eq
end InitECandidate.Proofs.BackendStages
