import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded500
import InitECandidate.Proofs.BackendStages.ZeroData500
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets500_eq : Padded500.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys500 := by
  with_unfolding_all rfl
theorem zeroTargets500_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded500 acc = ZeroData.keys500.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets500_eq]
#print axioms zeroTargets500_eq
end InitECandidate.Proofs.BackendStages
