import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded865
import InitECandidate.Proofs.BackendStages.ZeroData865
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets865_eq : Padded865.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys865 := by
  with_unfolding_all rfl
theorem zeroTargets865_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded865 acc = ZeroData.keys865.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets865_eq]
#print axioms zeroTargets865_eq
end InitECandidate.Proofs.BackendStages
