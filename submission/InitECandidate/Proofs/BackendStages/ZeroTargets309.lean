import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded309
import InitECandidate.Proofs.BackendStages.ZeroData309
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets309_eq : Padded309.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys309 := by
  with_unfolding_all rfl
theorem zeroTargets309_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded309 acc = ZeroData.keys309.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets309_eq]
#print axioms zeroTargets309_eq
end InitECandidate.Proofs.BackendStages
