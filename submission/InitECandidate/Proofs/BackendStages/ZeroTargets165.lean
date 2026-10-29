import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded165
import InitECandidate.Proofs.BackendStages.ZeroData165
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets165_eq : Padded165.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys165 := by
  with_unfolding_all rfl
theorem zeroTargets165_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded165 acc = ZeroData.keys165.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets165_eq]
#print axioms zeroTargets165_eq
end InitECandidate.Proofs.BackendStages
