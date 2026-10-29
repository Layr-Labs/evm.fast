import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded303
import InitECandidate.Proofs.BackendStages.ZeroData303
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets303_eq : Padded303.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys303 := by
  with_unfolding_all rfl
theorem zeroTargets303_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded303 acc = ZeroData.keys303.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets303_eq]
#print axioms zeroTargets303_eq
end InitECandidate.Proofs.BackendStages
