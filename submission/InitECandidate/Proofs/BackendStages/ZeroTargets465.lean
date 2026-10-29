import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded465
import InitECandidate.Proofs.BackendStages.ZeroData465
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets465_eq : Padded465.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys465 := by
  with_unfolding_all rfl
theorem zeroTargets465_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded465 acc = ZeroData.keys465.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets465_eq]
#print axioms zeroTargets465_eq
end InitECandidate.Proofs.BackendStages
