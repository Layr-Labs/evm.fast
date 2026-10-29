import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded260
import InitECandidate.Proofs.BackendStages.ZeroData260
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets260_eq : Padded260.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys260 := by
  with_unfolding_all rfl
theorem zeroTargets260_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded260 acc = ZeroData.keys260.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets260_eq]
#print axioms zeroTargets260_eq
end InitECandidate.Proofs.BackendStages
