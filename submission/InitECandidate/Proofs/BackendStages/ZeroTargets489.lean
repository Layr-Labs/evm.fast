import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded489
import InitECandidate.Proofs.BackendStages.ZeroData489
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets489_eq : Padded489.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys489 := by
  with_unfolding_all rfl
theorem zeroTargets489_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded489 acc = ZeroData.keys489.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets489_eq]
#print axioms zeroTargets489_eq
end InitECandidate.Proofs.BackendStages
