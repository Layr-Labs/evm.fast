import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded852
import InitECandidate.Proofs.BackendStages.ZeroData852
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets852_eq : Padded852.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys852 := by
  with_unfolding_all rfl
theorem zeroTargets852_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded852 acc = ZeroData.keys852.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets852_eq]
#print axioms zeroTargets852_eq
end InitECandidate.Proofs.BackendStages
