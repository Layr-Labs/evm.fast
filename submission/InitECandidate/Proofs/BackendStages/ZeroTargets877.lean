import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded877
import InitECandidate.Proofs.BackendStages.ZeroData877
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets877_eq : Padded877.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys877 := by
  with_unfolding_all rfl
theorem zeroTargets877_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded877 acc = ZeroData.keys877.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets877_eq]
#print axioms zeroTargets877_eq
end InitECandidate.Proofs.BackendStages
