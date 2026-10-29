import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded734
import InitECandidate.Proofs.BackendStages.ZeroData734
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets734_eq : Padded734.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys734 := by
  with_unfolding_all rfl
theorem zeroTargets734_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded734 acc = ZeroData.keys734.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets734_eq]
#print axioms zeroTargets734_eq
end InitECandidate.Proofs.BackendStages
