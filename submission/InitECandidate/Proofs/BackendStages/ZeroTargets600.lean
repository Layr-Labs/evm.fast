import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded600
import InitECandidate.Proofs.BackendStages.ZeroData600
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets600_eq : Padded600.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys600 := by
  with_unfolding_all rfl
theorem zeroTargets600_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded600 acc = ZeroData.keys600.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets600_eq]
#print axioms zeroTargets600_eq
end InitECandidate.Proofs.BackendStages
