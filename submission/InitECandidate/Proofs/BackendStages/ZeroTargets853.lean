import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded853
import InitECandidate.Proofs.BackendStages.ZeroData853
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets853_eq : Padded853.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys853 := by
  with_unfolding_all rfl
theorem zeroTargets853_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded853 acc = ZeroData.keys853.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets853_eq]
#print axioms zeroTargets853_eq
end InitECandidate.Proofs.BackendStages
