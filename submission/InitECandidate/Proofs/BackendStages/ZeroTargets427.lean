import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded427
import InitECandidate.Proofs.BackendStages.ZeroData427
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets427_eq : Padded427.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys427 := by
  with_unfolding_all rfl
theorem zeroTargets427_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded427 acc = ZeroData.keys427.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets427_eq]
#print axioms zeroTargets427_eq
end InitECandidate.Proofs.BackendStages
