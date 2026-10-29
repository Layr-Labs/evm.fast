import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded80
import InitECandidate.Proofs.BackendStages.ZeroData80
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets80_eq : Padded80.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys80 := by
  with_unfolding_all rfl
theorem zeroTargets80_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded80 acc = ZeroData.keys80.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets80_eq]
#print axioms zeroTargets80_eq
end InitECandidate.Proofs.BackendStages
