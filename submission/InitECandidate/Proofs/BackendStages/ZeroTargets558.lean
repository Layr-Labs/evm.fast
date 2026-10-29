import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded558
import InitECandidate.Proofs.BackendStages.ZeroData558
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets558_eq : Padded558.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys558 := by
  with_unfolding_all rfl
theorem zeroTargets558_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded558 acc = ZeroData.keys558.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets558_eq]
#print axioms zeroTargets558_eq
end InitECandidate.Proofs.BackendStages
