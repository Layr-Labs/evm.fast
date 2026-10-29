import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded651
import InitECandidate.Proofs.BackendStages.ZeroData651
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets651_eq : Padded651.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys651 := by
  with_unfolding_all rfl
theorem zeroTargets651_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded651 acc = ZeroData.keys651.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets651_eq]
#print axioms zeroTargets651_eq
end InitECandidate.Proofs.BackendStages
