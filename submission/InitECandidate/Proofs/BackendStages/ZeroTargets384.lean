import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded384
import InitECandidate.Proofs.BackendStages.ZeroData384
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets384_eq : Padded384.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys384 := by
  with_unfolding_all rfl
theorem zeroTargets384_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded384 acc = ZeroData.keys384.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets384_eq]
#print axioms zeroTargets384_eq
end InitECandidate.Proofs.BackendStages
