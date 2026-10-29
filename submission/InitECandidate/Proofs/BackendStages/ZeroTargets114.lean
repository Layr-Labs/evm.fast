import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded114
import InitECandidate.Proofs.BackendStages.ZeroData114
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets114_eq : Padded114.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys114 := by
  with_unfolding_all rfl
theorem zeroTargets114_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded114 acc = ZeroData.keys114.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets114_eq]
#print axioms zeroTargets114_eq
end InitECandidate.Proofs.BackendStages
