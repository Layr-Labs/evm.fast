import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded763
import InitECandidate.Proofs.BackendStages.ZeroData763
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets763_eq : Padded763.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys763 := by
  with_unfolding_all rfl
theorem zeroTargets763_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded763 acc = ZeroData.keys763.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets763_eq]
#print axioms zeroTargets763_eq
end InitECandidate.Proofs.BackendStages
