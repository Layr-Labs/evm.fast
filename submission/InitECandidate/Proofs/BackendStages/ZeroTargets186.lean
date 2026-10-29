import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded186
import InitECandidate.Proofs.BackendStages.ZeroData186
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets186_eq : Padded186.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys186 := by
  with_unfolding_all rfl
theorem zeroTargets186_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded186 acc = ZeroData.keys186.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets186_eq]
#print axioms zeroTargets186_eq
end InitECandidate.Proofs.BackendStages
