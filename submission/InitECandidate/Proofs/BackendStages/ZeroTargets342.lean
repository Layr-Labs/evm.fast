import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded342
import InitECandidate.Proofs.BackendStages.ZeroData342
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets342_eq : Padded342.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys342 := by
  with_unfolding_all rfl
theorem zeroTargets342_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded342 acc = ZeroData.keys342.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets342_eq]
#print axioms zeroTargets342_eq
end InitECandidate.Proofs.BackendStages
