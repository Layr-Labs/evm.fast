import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded813
import InitECandidate.Proofs.BackendStages.ZeroData813
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets813_eq : Padded813.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys813 := by
  with_unfolding_all rfl
theorem zeroTargets813_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded813 acc = ZeroData.keys813.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets813_eq]
#print axioms zeroTargets813_eq
end InitECandidate.Proofs.BackendStages
