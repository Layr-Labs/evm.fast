import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded577
import InitECandidate.Proofs.BackendStages.ZeroData577
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets577_eq : Padded577.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys577 := by
  with_unfolding_all rfl
theorem zeroTargets577_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded577 acc = ZeroData.keys577.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets577_eq]
#print axioms zeroTargets577_eq
end InitECandidate.Proofs.BackendStages
