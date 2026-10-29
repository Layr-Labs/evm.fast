import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded178
import InitECandidate.Proofs.BackendStages.ZeroData178
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets178_eq : Padded178.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys178 := by
  with_unfolding_all rfl
theorem zeroTargets178_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded178 acc = ZeroData.keys178.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets178_eq]
#print axioms zeroTargets178_eq
end InitECandidate.Proofs.BackendStages
