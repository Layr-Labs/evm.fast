import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded166
import InitECandidate.Proofs.BackendStages.ZeroData166
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets166_eq : Padded166.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys166 := by
  with_unfolding_all rfl
theorem zeroTargets166_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded166 acc = ZeroData.keys166.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets166_eq]
#print axioms zeroTargets166_eq
end InitECandidate.Proofs.BackendStages
