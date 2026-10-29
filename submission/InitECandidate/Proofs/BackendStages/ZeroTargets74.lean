import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded74
import InitECandidate.Proofs.BackendStages.ZeroData74
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets74_eq : Padded74.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys74 := by
  with_unfolding_all rfl
theorem zeroTargets74_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded74 acc = ZeroData.keys74.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets74_eq]
#print axioms zeroTargets74_eq
end InitECandidate.Proofs.BackendStages
