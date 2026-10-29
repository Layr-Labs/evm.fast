import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded122
import InitECandidate.Proofs.BackendStages.ZeroData122
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets122_eq : Padded122.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys122 := by
  with_unfolding_all rfl
theorem zeroTargets122_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded122 acc = ZeroData.keys122.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets122_eq]
#print axioms zeroTargets122_eq
end InitECandidate.Proofs.BackendStages
