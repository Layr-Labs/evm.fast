import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded146
import InitECandidate.Proofs.BackendStages.ZeroData146
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets146_eq : Padded146.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys146 := by
  with_unfolding_all rfl
theorem zeroTargets146_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded146 acc = ZeroData.keys146.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets146_eq]
#print axioms zeroTargets146_eq
end InitECandidate.Proofs.BackendStages
