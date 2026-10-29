import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded407
import InitECandidate.Proofs.BackendStages.ZeroData407
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets407_eq : Padded407.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys407 := by
  with_unfolding_all rfl
theorem zeroTargets407_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded407 acc = ZeroData.keys407.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets407_eq]
#print axioms zeroTargets407_eq
end InitECandidate.Proofs.BackendStages
