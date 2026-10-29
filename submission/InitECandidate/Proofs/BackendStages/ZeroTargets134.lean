import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded134
import InitECandidate.Proofs.BackendStages.ZeroData134
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets134_eq : Padded134.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys134 := by
  with_unfolding_all rfl
theorem zeroTargets134_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded134 acc = ZeroData.keys134.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets134_eq]
#print axioms zeroTargets134_eq
end InitECandidate.Proofs.BackendStages
