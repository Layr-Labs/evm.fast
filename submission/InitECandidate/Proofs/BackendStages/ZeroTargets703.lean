import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded703
import InitECandidate.Proofs.BackendStages.ZeroData703
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets703_eq : Padded703.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys703 := by
  with_unfolding_all rfl
theorem zeroTargets703_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded703 acc = ZeroData.keys703.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets703_eq]
#print axioms zeroTargets703_eq
end InitECandidate.Proofs.BackendStages
