import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded216
import InitECandidate.Proofs.BackendStages.ZeroData216
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets216_eq : Padded216.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys216 := by
  with_unfolding_all rfl
theorem zeroTargets216_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded216 acc = ZeroData.keys216.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets216_eq]
#print axioms zeroTargets216_eq
end InitECandidate.Proofs.BackendStages
