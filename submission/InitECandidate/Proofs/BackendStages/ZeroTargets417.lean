import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded417
import InitECandidate.Proofs.BackendStages.ZeroData417
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets417_eq : Padded417.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys417 := by
  with_unfolding_all rfl
theorem zeroTargets417_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded417 acc = ZeroData.keys417.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets417_eq]
#print axioms zeroTargets417_eq
end InitECandidate.Proofs.BackendStages
