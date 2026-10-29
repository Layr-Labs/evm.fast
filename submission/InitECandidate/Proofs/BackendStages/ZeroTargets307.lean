import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded307
import InitECandidate.Proofs.BackendStages.ZeroData307
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets307_eq : Padded307.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys307 := by
  with_unfolding_all rfl
theorem zeroTargets307_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded307 acc = ZeroData.keys307.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets307_eq]
#print axioms zeroTargets307_eq
end InitECandidate.Proofs.BackendStages
