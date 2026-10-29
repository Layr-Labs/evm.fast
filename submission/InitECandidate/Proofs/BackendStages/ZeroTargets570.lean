import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded570
import InitECandidate.Proofs.BackendStages.ZeroData570
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets570_eq : Padded570.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys570 := by
  with_unfolding_all rfl
theorem zeroTargets570_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded570 acc = ZeroData.keys570.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets570_eq]
#print axioms zeroTargets570_eq
end InitECandidate.Proofs.BackendStages
