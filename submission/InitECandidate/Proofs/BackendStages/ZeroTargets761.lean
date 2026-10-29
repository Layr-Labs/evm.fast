import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded761
import InitECandidate.Proofs.BackendStages.ZeroData761
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets761_eq : Padded761.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys761 := by
  with_unfolding_all rfl
theorem zeroTargets761_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded761 acc = ZeroData.keys761.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets761_eq]
#print axioms zeroTargets761_eq
end InitECandidate.Proofs.BackendStages
