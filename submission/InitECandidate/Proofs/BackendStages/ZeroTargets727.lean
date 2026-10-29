import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded727
import InitECandidate.Proofs.BackendStages.ZeroData727
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets727_eq : Padded727.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys727 := by
  with_unfolding_all rfl
theorem zeroTargets727_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded727 acc = ZeroData.keys727.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets727_eq]
#print axioms zeroTargets727_eq
end InitECandidate.Proofs.BackendStages
