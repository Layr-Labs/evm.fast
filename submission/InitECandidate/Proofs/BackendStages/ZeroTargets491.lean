import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded491
import InitECandidate.Proofs.BackendStages.ZeroData491
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets491_eq : Padded491.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys491 := by
  with_unfolding_all rfl
theorem zeroTargets491_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded491 acc = ZeroData.keys491.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets491_eq]
#print axioms zeroTargets491_eq
end InitECandidate.Proofs.BackendStages
