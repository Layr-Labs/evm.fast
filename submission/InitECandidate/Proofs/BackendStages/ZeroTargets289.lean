import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded289
import InitECandidate.Proofs.BackendStages.ZeroData289
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets289_eq : Padded289.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys289 := by
  with_unfolding_all rfl
theorem zeroTargets289_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded289 acc = ZeroData.keys289.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets289_eq]
#print axioms zeroTargets289_eq
end InitECandidate.Proofs.BackendStages
