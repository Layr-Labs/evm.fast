import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded284
import InitECandidate.Proofs.BackendStages.ZeroData284
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets284_eq : Padded284.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys284 := by
  with_unfolding_all rfl
theorem zeroTargets284_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded284 acc = ZeroData.keys284.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets284_eq]
#print axioms zeroTargets284_eq
end InitECandidate.Proofs.BackendStages
