import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded130
import InitECandidate.Proofs.BackendStages.ZeroData130
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets130_eq : Padded130.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys130 := by
  with_unfolding_all rfl
theorem zeroTargets130_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded130 acc = ZeroData.keys130.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets130_eq]
#print axioms zeroTargets130_eq
end InitECandidate.Proofs.BackendStages
