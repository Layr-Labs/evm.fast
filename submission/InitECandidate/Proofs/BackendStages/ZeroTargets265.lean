import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded265
import InitECandidate.Proofs.BackendStages.ZeroData265
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets265_eq : Padded265.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys265 := by
  with_unfolding_all rfl
theorem zeroTargets265_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded265 acc = ZeroData.keys265.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets265_eq]
#print axioms zeroTargets265_eq
end InitECandidate.Proofs.BackendStages
