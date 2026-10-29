import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded859
import InitECandidate.Proofs.BackendStages.ZeroData859
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets859_eq : Padded859.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys859 := by
  with_unfolding_all rfl
theorem zeroTargets859_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded859 acc = ZeroData.keys859.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets859_eq]
#print axioms zeroTargets859_eq
end InitECandidate.Proofs.BackendStages
