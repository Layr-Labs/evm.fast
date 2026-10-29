import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded692
import InitECandidate.Proofs.BackendStages.ZeroData692
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets692_eq : Padded692.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys692 := by
  with_unfolding_all rfl
theorem zeroTargets692_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded692 acc = ZeroData.keys692.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets692_eq]
#print axioms zeroTargets692_eq
end InitECandidate.Proofs.BackendStages
