import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded524
import InitECandidate.Proofs.BackendStages.ZeroData524
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets524_eq : Padded524.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys524 := by
  with_unfolding_all rfl
theorem zeroTargets524_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded524 acc = ZeroData.keys524.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets524_eq]
#print axioms zeroTargets524_eq
end InitECandidate.Proofs.BackendStages
