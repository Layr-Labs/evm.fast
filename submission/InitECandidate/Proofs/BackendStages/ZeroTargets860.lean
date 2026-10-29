import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded860
import InitECandidate.Proofs.BackendStages.ZeroData860
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets860_eq : Padded860.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys860 := by
  with_unfolding_all rfl
theorem zeroTargets860_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded860 acc = ZeroData.keys860.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets860_eq]
#print axioms zeroTargets860_eq
end InitECandidate.Proofs.BackendStages
