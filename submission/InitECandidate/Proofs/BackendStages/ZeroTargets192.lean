import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded192
import InitECandidate.Proofs.BackendStages.ZeroData192
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets192_eq : Padded192.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys192 := by
  with_unfolding_all rfl
theorem zeroTargets192_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded192 acc = ZeroData.keys192.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets192_eq]
#print axioms zeroTargets192_eq
end InitECandidate.Proofs.BackendStages
