import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded512
import InitECandidate.Proofs.BackendStages.ZeroData512
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets512_eq : Padded512.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys512 := by
  with_unfolding_all rfl
theorem zeroTargets512_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded512 acc = ZeroData.keys512.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets512_eq]
#print axioms zeroTargets512_eq
end InitECandidate.Proofs.BackendStages
