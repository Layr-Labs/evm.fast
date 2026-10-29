import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded622
import InitECandidate.Proofs.BackendStages.ZeroData622
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets622_eq : Padded622.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys622 := by
  with_unfolding_all rfl
theorem zeroTargets622_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded622 acc = ZeroData.keys622.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets622_eq]
#print axioms zeroTargets622_eq
end InitECandidate.Proofs.BackendStages
