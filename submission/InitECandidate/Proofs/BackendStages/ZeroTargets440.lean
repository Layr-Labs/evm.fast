import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded440
import InitECandidate.Proofs.BackendStages.ZeroData440
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets440_eq : Padded440.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys440 := by
  with_unfolding_all rfl
theorem zeroTargets440_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded440 acc = ZeroData.keys440.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets440_eq]
#print axioms zeroTargets440_eq
end InitECandidate.Proofs.BackendStages
