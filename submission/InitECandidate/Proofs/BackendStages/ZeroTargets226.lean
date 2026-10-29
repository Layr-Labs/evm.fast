import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded226
import InitECandidate.Proofs.BackendStages.ZeroData226
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets226_eq : Padded226.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys226 := by
  with_unfolding_all rfl
theorem zeroTargets226_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded226 acc = ZeroData.keys226.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets226_eq]
#print axioms zeroTargets226_eq
end InitECandidate.Proofs.BackendStages
