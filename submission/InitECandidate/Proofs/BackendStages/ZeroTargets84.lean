import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded84
import InitECandidate.Proofs.BackendStages.ZeroData84
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets84_eq : Padded84.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys84 := by
  with_unfolding_all rfl
theorem zeroTargets84_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded84 acc = ZeroData.keys84.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets84_eq]
#print axioms zeroTargets84_eq
end InitECandidate.Proofs.BackendStages
