import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded306
import InitECandidate.Proofs.BackendStages.ZeroData306
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets306_eq : Padded306.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys306 := by
  with_unfolding_all rfl
theorem zeroTargets306_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded306 acc = ZeroData.keys306.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets306_eq]
#print axioms zeroTargets306_eq
end InitECandidate.Proofs.BackendStages
