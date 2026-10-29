import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded278
import InitECandidate.Proofs.BackendStages.ZeroData278
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets278_eq : Padded278.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys278 := by
  with_unfolding_all rfl
theorem zeroTargets278_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded278 acc = ZeroData.keys278.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets278_eq]
#print axioms zeroTargets278_eq
end InitECandidate.Proofs.BackendStages
