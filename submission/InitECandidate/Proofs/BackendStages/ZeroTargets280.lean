import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded280
import InitECandidate.Proofs.BackendStages.ZeroData280
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets280_eq : Padded280.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys280 := by
  with_unfolding_all rfl
theorem zeroTargets280_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded280 acc = ZeroData.keys280.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets280_eq]
#print axioms zeroTargets280_eq
end InitECandidate.Proofs.BackendStages
