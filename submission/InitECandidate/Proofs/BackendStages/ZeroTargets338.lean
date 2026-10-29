import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded338
import InitECandidate.Proofs.BackendStages.ZeroData338
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets338_eq : Padded338.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys338 := by
  with_unfolding_all rfl
theorem zeroTargets338_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded338 acc = ZeroData.keys338.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets338_eq]
#print axioms zeroTargets338_eq
end InitECandidate.Proofs.BackendStages
