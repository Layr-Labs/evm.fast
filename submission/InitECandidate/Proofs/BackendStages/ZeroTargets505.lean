import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded505
import InitECandidate.Proofs.BackendStages.ZeroData505
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets505_eq : Padded505.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys505 := by
  with_unfolding_all rfl
theorem zeroTargets505_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded505 acc = ZeroData.keys505.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets505_eq]
#print axioms zeroTargets505_eq
end InitECandidate.Proofs.BackendStages
