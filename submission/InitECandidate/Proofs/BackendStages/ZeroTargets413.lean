import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded413
import InitECandidate.Proofs.BackendStages.ZeroData413
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets413_eq : Padded413.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys413 := by
  with_unfolding_all rfl
theorem zeroTargets413_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded413 acc = ZeroData.keys413.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets413_eq]
#print axioms zeroTargets413_eq
end InitECandidate.Proofs.BackendStages
