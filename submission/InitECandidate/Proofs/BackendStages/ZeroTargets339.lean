import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded339
import InitECandidate.Proofs.BackendStages.ZeroData339
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets339_eq : Padded339.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys339 := by
  with_unfolding_all rfl
theorem zeroTargets339_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded339 acc = ZeroData.keys339.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets339_eq]
#print axioms zeroTargets339_eq
end InitECandidate.Proofs.BackendStages
