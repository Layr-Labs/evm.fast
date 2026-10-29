import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded0
import InitECandidate.Proofs.BackendStages.ZeroData0
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets0_eq : Padded0.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys0 := by
  with_unfolding_all rfl
theorem zeroTargets0_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded0 acc = ZeroData.keys0.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets0_eq]
#print axioms zeroTargets0_eq
end InitECandidate.Proofs.BackendStages
