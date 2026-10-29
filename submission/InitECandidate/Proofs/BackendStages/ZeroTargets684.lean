import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded684
import InitECandidate.Proofs.BackendStages.ZeroData684
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets684_eq : Padded684.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys684 := by
  with_unfolding_all rfl
theorem zeroTargets684_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded684 acc = ZeroData.keys684.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets684_eq]
#print axioms zeroTargets684_eq
end InitECandidate.Proofs.BackendStages
