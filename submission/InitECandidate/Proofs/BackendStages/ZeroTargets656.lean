import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded656
import InitECandidate.Proofs.BackendStages.ZeroData656
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets656_eq : Padded656.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys656 := by
  with_unfolding_all rfl
theorem zeroTargets656_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded656 acc = ZeroData.keys656.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets656_eq]
#print axioms zeroTargets656_eq
end InitECandidate.Proofs.BackendStages
