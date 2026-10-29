import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded103
import InitECandidate.Proofs.BackendStages.ZeroData103
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets103_eq : Padded103.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys103 := by
  with_unfolding_all rfl
theorem zeroTargets103_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded103 acc = ZeroData.keys103.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets103_eq]
#print axioms zeroTargets103_eq
end InitECandidate.Proofs.BackendStages
