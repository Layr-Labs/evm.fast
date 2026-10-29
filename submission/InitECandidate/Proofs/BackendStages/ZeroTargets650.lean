import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded650
import InitECandidate.Proofs.BackendStages.ZeroData650
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets650_eq : Padded650.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys650 := by
  with_unfolding_all rfl
theorem zeroTargets650_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded650 acc = ZeroData.keys650.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets650_eq]
#print axioms zeroTargets650_eq
end InitECandidate.Proofs.BackendStages
