import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded836
import InitECandidate.Proofs.BackendStages.ZeroData836
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets836_eq : Padded836.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys836 := by
  with_unfolding_all rfl
theorem zeroTargets836_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded836 acc = ZeroData.keys836.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets836_eq]
#print axioms zeroTargets836_eq
end InitECandidate.Proofs.BackendStages
