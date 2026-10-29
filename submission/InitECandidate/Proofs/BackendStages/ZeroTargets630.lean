import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded630
import InitECandidate.Proofs.BackendStages.ZeroData630
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets630_eq : Padded630.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys630 := by
  with_unfolding_all rfl
theorem zeroTargets630_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded630 acc = ZeroData.keys630.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets630_eq]
#print axioms zeroTargets630_eq
end InitECandidate.Proofs.BackendStages
