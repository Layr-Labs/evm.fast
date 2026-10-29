import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded346
import InitECandidate.Proofs.BackendStages.ZeroData346
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets346_eq : Padded346.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys346 := by
  with_unfolding_all rfl
theorem zeroTargets346_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded346 acc = ZeroData.keys346.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets346_eq]
#print axioms zeroTargets346_eq
end InitECandidate.Proofs.BackendStages
