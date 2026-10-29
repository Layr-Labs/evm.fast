import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded690
import InitECandidate.Proofs.BackendStages.ZeroData690
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets690_eq : Padded690.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys690 := by
  with_unfolding_all rfl
theorem zeroTargets690_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded690 acc = ZeroData.keys690.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets690_eq]
#print axioms zeroTargets690_eq
end InitECandidate.Proofs.BackendStages
