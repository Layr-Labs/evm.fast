import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded258
import InitECandidate.Proofs.BackendStages.ZeroData258
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets258_eq : Padded258.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys258 := by
  with_unfolding_all rfl
theorem zeroTargets258_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded258 acc = ZeroData.keys258.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets258_eq]
#print axioms zeroTargets258_eq
end InitECandidate.Proofs.BackendStages
