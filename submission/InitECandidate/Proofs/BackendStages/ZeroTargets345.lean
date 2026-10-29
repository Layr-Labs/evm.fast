import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded345
import InitECandidate.Proofs.BackendStages.ZeroData345
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets345_eq : Padded345.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys345 := by
  with_unfolding_all rfl
theorem zeroTargets345_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded345 acc = ZeroData.keys345.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets345_eq]
#print axioms zeroTargets345_eq
end InitECandidate.Proofs.BackendStages
