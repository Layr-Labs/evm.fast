import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded402
import InitECandidate.Proofs.BackendStages.ZeroData402
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets402_eq : Padded402.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys402 := by
  with_unfolding_all rfl
theorem zeroTargets402_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded402 acc = ZeroData.keys402.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets402_eq]
#print axioms zeroTargets402_eq
end InitECandidate.Proofs.BackendStages
