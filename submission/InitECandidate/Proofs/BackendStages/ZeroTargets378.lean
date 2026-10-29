import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded378
import InitECandidate.Proofs.BackendStages.ZeroData378
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets378_eq : Padded378.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys378 := by
  with_unfolding_all rfl
theorem zeroTargets378_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded378 acc = ZeroData.keys378.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets378_eq]
#print axioms zeroTargets378_eq
end InitECandidate.Proofs.BackendStages
