import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded208
import InitECandidate.Proofs.BackendStages.ZeroData208
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets208_eq : Padded208.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys208 := by
  with_unfolding_all rfl
theorem zeroTargets208_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded208 acc = ZeroData.keys208.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets208_eq]
#print axioms zeroTargets208_eq
end InitECandidate.Proofs.BackendStages
