import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded168
import InitECandidate.Proofs.BackendStages.ZeroData168
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets168_eq : Padded168.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys168 := by
  with_unfolding_all rfl
theorem zeroTargets168_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded168 acc = ZeroData.keys168.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets168_eq]
#print axioms zeroTargets168_eq
end InitECandidate.Proofs.BackendStages
