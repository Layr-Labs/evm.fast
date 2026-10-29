import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded696
import InitECandidate.Proofs.BackendStages.ZeroData696
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets696_eq : Padded696.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys696 := by
  with_unfolding_all rfl
theorem zeroTargets696_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded696 acc = ZeroData.keys696.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets696_eq]
#print axioms zeroTargets696_eq
end InitECandidate.Proofs.BackendStages
