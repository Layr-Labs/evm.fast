import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded137
import InitECandidate.Proofs.BackendStages.ZeroData137
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets137_eq : Padded137.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys137 := by
  with_unfolding_all rfl
theorem zeroTargets137_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded137 acc = ZeroData.keys137.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets137_eq]
#print axioms zeroTargets137_eq
end InitECandidate.Proofs.BackendStages
