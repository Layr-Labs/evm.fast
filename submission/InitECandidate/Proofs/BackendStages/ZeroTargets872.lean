import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded872
import InitECandidate.Proofs.BackendStages.ZeroData872
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets872_eq : Padded872.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys872 := by
  with_unfolding_all rfl
theorem zeroTargets872_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded872 acc = ZeroData.keys872.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets872_eq]
#print axioms zeroTargets872_eq
end InitECandidate.Proofs.BackendStages
