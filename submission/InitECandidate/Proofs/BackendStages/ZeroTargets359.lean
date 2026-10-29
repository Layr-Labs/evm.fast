import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded359
import InitECandidate.Proofs.BackendStages.ZeroData359
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets359_eq : Padded359.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys359 := by
  with_unfolding_all rfl
theorem zeroTargets359_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded359 acc = ZeroData.keys359.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets359_eq]
#print axioms zeroTargets359_eq
end InitECandidate.Proofs.BackendStages
