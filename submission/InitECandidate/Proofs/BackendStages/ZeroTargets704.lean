import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded704
import InitECandidate.Proofs.BackendStages.ZeroData704
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets704_eq : Padded704.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys704 := by
  with_unfolding_all rfl
theorem zeroTargets704_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded704 acc = ZeroData.keys704.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets704_eq]
#print axioms zeroTargets704_eq
end InitECandidate.Proofs.BackendStages
