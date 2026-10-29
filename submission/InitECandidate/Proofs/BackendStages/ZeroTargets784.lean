import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded784
import InitECandidate.Proofs.BackendStages.ZeroData784
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets784_eq : Padded784.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys784 := by
  with_unfolding_all rfl
theorem zeroTargets784_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded784 acc = ZeroData.keys784.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets784_eq]
#print axioms zeroTargets784_eq
end InitECandidate.Proofs.BackendStages
