import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded245
import InitECandidate.Proofs.BackendStages.ZeroData245
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets245_eq : Padded245.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys245 := by
  with_unfolding_all rfl
theorem zeroTargets245_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded245 acc = ZeroData.keys245.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets245_eq]
#print axioms zeroTargets245_eq
end InitECandidate.Proofs.BackendStages
