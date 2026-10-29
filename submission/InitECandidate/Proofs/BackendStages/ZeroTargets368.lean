import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded368
import InitECandidate.Proofs.BackendStages.ZeroData368
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets368_eq : Padded368.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys368 := by
  with_unfolding_all rfl
theorem zeroTargets368_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded368 acc = ZeroData.keys368.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets368_eq]
#print axioms zeroTargets368_eq
end InitECandidate.Proofs.BackendStages
