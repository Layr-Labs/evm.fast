import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded569
import InitECandidate.Proofs.BackendStages.ZeroData569
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets569_eq : Padded569.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys569 := by
  with_unfolding_all rfl
theorem zeroTargets569_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded569 acc = ZeroData.keys569.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets569_eq]
#print axioms zeroTargets569_eq
end InitECandidate.Proofs.BackendStages
