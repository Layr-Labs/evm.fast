import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded614
import InitECandidate.Proofs.BackendStages.ZeroData614
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets614_eq : Padded614.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys614 := by
  with_unfolding_all rfl
theorem zeroTargets614_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded614 acc = ZeroData.keys614.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets614_eq]
#print axioms zeroTargets614_eq
end InitECandidate.Proofs.BackendStages
