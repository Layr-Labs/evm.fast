import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded344
import InitECandidate.Proofs.BackendStages.ZeroData344
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets344_eq : Padded344.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys344 := by
  with_unfolding_all rfl
theorem zeroTargets344_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded344 acc = ZeroData.keys344.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets344_eq]
#print axioms zeroTargets344_eq
end InitECandidate.Proofs.BackendStages
