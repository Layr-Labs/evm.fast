import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded331
import InitECandidate.Proofs.BackendStages.ZeroData331
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets331_eq : Padded331.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys331 := by
  with_unfolding_all rfl
theorem zeroTargets331_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded331 acc = ZeroData.keys331.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets331_eq]
#print axioms zeroTargets331_eq
end InitECandidate.Proofs.BackendStages
