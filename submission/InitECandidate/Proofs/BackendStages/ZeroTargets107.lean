import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded107
import InitECandidate.Proofs.BackendStages.ZeroData107
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets107_eq : Padded107.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys107 := by
  with_unfolding_all rfl
theorem zeroTargets107_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded107 acc = ZeroData.keys107.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets107_eq]
#print axioms zeroTargets107_eq
end InitECandidate.Proofs.BackendStages
