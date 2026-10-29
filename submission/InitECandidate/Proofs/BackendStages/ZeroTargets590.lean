import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded590
import InitECandidate.Proofs.BackendStages.ZeroData590
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets590_eq : Padded590.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys590 := by
  with_unfolding_all rfl
theorem zeroTargets590_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded590 acc = ZeroData.keys590.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets590_eq]
#print axioms zeroTargets590_eq
end InitECandidate.Proofs.BackendStages
