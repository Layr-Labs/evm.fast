import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded335
import InitECandidate.Proofs.BackendStages.ZeroData335
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets335_eq : Padded335.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys335 := by
  with_unfolding_all rfl
theorem zeroTargets335_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded335 acc = ZeroData.keys335.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets335_eq]
#print axioms zeroTargets335_eq
end InitECandidate.Proofs.BackendStages
