import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded751
import InitECandidate.Proofs.BackendStages.ZeroData751
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets751_eq : Padded751.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys751 := by
  with_unfolding_all rfl
theorem zeroTargets751_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded751 acc = ZeroData.keys751.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets751_eq]
#print axioms zeroTargets751_eq
end InitECandidate.Proofs.BackendStages
