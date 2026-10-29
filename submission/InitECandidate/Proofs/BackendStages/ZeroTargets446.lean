import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded446
import InitECandidate.Proofs.BackendStages.ZeroData446
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets446_eq : Padded446.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys446 := by
  with_unfolding_all rfl
theorem zeroTargets446_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded446 acc = ZeroData.keys446.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets446_eq]
#print axioms zeroTargets446_eq
end InitECandidate.Proofs.BackendStages
