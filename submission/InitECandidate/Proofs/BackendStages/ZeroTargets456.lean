import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded456
import InitECandidate.Proofs.BackendStages.ZeroData456
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets456_eq : Padded456.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys456 := by
  with_unfolding_all rfl
theorem zeroTargets456_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded456 acc = ZeroData.keys456.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets456_eq]
#print axioms zeroTargets456_eq
end InitECandidate.Proofs.BackendStages
