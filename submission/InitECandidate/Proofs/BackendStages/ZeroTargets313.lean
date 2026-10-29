import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded313
import InitECandidate.Proofs.BackendStages.ZeroData313
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets313_eq : Padded313.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys313 := by
  with_unfolding_all rfl
theorem zeroTargets313_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded313 acc = ZeroData.keys313.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets313_eq]
#print axioms zeroTargets313_eq
end InitECandidate.Proofs.BackendStages
