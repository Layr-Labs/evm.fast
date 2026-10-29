import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded802
import InitECandidate.Proofs.BackendStages.ZeroData802
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets802_eq : Padded802.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys802 := by
  with_unfolding_all rfl
theorem zeroTargets802_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded802 acc = ZeroData.keys802.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets802_eq]
#print axioms zeroTargets802_eq
end InitECandidate.Proofs.BackendStages
