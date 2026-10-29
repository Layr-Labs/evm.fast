import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded788
import InitECandidate.Proofs.BackendStages.ZeroData788
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets788_eq : Padded788.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys788 := by
  with_unfolding_all rfl
theorem zeroTargets788_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded788 acc = ZeroData.keys788.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets788_eq]
#print axioms zeroTargets788_eq
end InitECandidate.Proofs.BackendStages
