import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded688
import InitECandidate.Proofs.BackendStages.ZeroData688
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets688_eq : Padded688.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys688 := by
  with_unfolding_all rfl
theorem zeroTargets688_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded688 acc = ZeroData.keys688.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets688_eq]
#print axioms zeroTargets688_eq
end InitECandidate.Proofs.BackendStages
