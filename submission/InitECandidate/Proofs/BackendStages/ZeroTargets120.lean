import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded120
import InitECandidate.Proofs.BackendStages.ZeroData120
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets120_eq : Padded120.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys120 := by
  with_unfolding_all rfl
theorem zeroTargets120_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded120 acc = ZeroData.keys120.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets120_eq]
#print axioms zeroTargets120_eq
end InitECandidate.Proofs.BackendStages
