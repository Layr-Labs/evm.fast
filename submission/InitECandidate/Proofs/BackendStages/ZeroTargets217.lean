import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded217
import InitECandidate.Proofs.BackendStages.ZeroData217
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets217_eq : Padded217.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys217 := by
  with_unfolding_all rfl
theorem zeroTargets217_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded217 acc = ZeroData.keys217.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets217_eq]
#print axioms zeroTargets217_eq
end InitECandidate.Proofs.BackendStages
