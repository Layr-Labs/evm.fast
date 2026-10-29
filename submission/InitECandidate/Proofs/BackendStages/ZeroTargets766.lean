import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded766
import InitECandidate.Proofs.BackendStages.ZeroData766
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets766_eq : Padded766.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys766 := by
  with_unfolding_all rfl
theorem zeroTargets766_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded766 acc = ZeroData.keys766.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets766_eq]
#print axioms zeroTargets766_eq
end InitECandidate.Proofs.BackendStages
