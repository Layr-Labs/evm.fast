import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded615
import InitECandidate.Proofs.BackendStages.ZeroData615
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets615_eq : Padded615.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys615 := by
  with_unfolding_all rfl
theorem zeroTargets615_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded615 acc = ZeroData.keys615.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets615_eq]
#print axioms zeroTargets615_eq
end InitECandidate.Proofs.BackendStages
