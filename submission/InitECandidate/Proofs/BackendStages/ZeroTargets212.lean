import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded212
import InitECandidate.Proofs.BackendStages.ZeroData212
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets212_eq : Padded212.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys212 := by
  with_unfolding_all rfl
theorem zeroTargets212_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded212 acc = ZeroData.keys212.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets212_eq]
#print axioms zeroTargets212_eq
end InitECandidate.Proofs.BackendStages
