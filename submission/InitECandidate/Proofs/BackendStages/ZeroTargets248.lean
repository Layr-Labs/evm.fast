import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded248
import InitECandidate.Proofs.BackendStages.ZeroData248
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets248_eq : Padded248.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys248 := by
  with_unfolding_all rfl
theorem zeroTargets248_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded248 acc = ZeroData.keys248.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets248_eq]
#print axioms zeroTargets248_eq
end InitECandidate.Proofs.BackendStages
