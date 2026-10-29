import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded198
import InitECandidate.Proofs.BackendStages.ZeroData198
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets198_eq : Padded198.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys198 := by
  with_unfolding_all rfl
theorem zeroTargets198_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded198 acc = ZeroData.keys198.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets198_eq]
#print axioms zeroTargets198_eq
end InitECandidate.Proofs.BackendStages
