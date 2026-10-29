import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded595
import InitECandidate.Proofs.BackendStages.ZeroData595
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets595_eq : Padded595.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys595 := by
  with_unfolding_all rfl
theorem zeroTargets595_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded595 acc = ZeroData.keys595.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets595_eq]
#print axioms zeroTargets595_eq
end InitECandidate.Proofs.BackendStages
