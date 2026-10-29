import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded101
import InitECandidate.Proofs.BackendStages.ZeroData101
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets101_eq : Padded101.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys101 := by
  with_unfolding_all rfl
theorem zeroTargets101_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded101 acc = ZeroData.keys101.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets101_eq]
#print axioms zeroTargets101_eq
end InitECandidate.Proofs.BackendStages
