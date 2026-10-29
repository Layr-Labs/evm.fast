import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded112
import InitECandidate.Proofs.BackendStages.ZeroData112
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets112_eq : Padded112.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys112 := by
  with_unfolding_all rfl
theorem zeroTargets112_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded112 acc = ZeroData.keys112.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets112_eq]
#print axioms zeroTargets112_eq
end InitECandidate.Proofs.BackendStages
