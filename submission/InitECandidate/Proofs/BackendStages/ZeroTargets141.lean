import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded141
import InitECandidate.Proofs.BackendStages.ZeroData141
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets141_eq : Padded141.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys141 := by
  with_unfolding_all rfl
theorem zeroTargets141_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded141 acc = ZeroData.keys141.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets141_eq]
#print axioms zeroTargets141_eq
end InitECandidate.Proofs.BackendStages
