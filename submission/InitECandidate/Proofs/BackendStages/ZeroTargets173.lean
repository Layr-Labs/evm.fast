import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded173
import InitECandidate.Proofs.BackendStages.ZeroData173
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets173_eq : Padded173.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys173 := by
  with_unfolding_all rfl
theorem zeroTargets173_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded173 acc = ZeroData.keys173.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets173_eq]
#print axioms zeroTargets173_eq
end InitECandidate.Proofs.BackendStages
