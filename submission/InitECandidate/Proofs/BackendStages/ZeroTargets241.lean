import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded241
import InitECandidate.Proofs.BackendStages.ZeroData241
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets241_eq : Padded241.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys241 := by
  with_unfolding_all rfl
theorem zeroTargets241_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded241 acc = ZeroData.keys241.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets241_eq]
#print axioms zeroTargets241_eq
end InitECandidate.Proofs.BackendStages
