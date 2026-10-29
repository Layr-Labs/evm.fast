import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded275
import InitECandidate.Proofs.BackendStages.ZeroData275
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets275_eq : Padded275.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys275 := by
  with_unfolding_all rfl
theorem zeroTargets275_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded275 acc = ZeroData.keys275.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets275_eq]
#print axioms zeroTargets275_eq
end InitECandidate.Proofs.BackendStages
