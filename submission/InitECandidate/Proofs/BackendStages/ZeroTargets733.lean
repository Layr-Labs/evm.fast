import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded733
import InitECandidate.Proofs.BackendStages.ZeroData733
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets733_eq : Padded733.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys733 := by
  with_unfolding_all rfl
theorem zeroTargets733_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded733 acc = ZeroData.keys733.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets733_eq]
#print axioms zeroTargets733_eq
end InitECandidate.Proofs.BackendStages
