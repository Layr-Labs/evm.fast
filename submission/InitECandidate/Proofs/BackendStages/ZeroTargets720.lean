import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded720
import InitECandidate.Proofs.BackendStages.ZeroData720
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets720_eq : Padded720.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys720 := by
  with_unfolding_all rfl
theorem zeroTargets720_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded720 acc = ZeroData.keys720.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets720_eq]
#print axioms zeroTargets720_eq
end InitECandidate.Proofs.BackendStages
