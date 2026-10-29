import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded820
import InitECandidate.Proofs.BackendStages.ZeroData820
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets820_eq : Padded820.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys820 := by
  with_unfolding_all rfl
theorem zeroTargets820_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded820 acc = ZeroData.keys820.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets820_eq]
#print axioms zeroTargets820_eq
end InitECandidate.Proofs.BackendStages
