import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded686
import InitECandidate.Proofs.BackendStages.ZeroData686
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets686_eq : Padded686.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys686 := by
  with_unfolding_all rfl
theorem zeroTargets686_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded686 acc = ZeroData.keys686.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets686_eq]
#print axioms zeroTargets686_eq
end InitECandidate.Proofs.BackendStages
