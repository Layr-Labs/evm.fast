import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded496
import InitECandidate.Proofs.BackendStages.ZeroData496
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets496_eq : Padded496.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys496 := by
  with_unfolding_all rfl
theorem zeroTargets496_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded496 acc = ZeroData.keys496.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets496_eq]
#print axioms zeroTargets496_eq
end InitECandidate.Proofs.BackendStages
