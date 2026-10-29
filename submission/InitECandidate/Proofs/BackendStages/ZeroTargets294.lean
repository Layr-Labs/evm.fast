import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded294
import InitECandidate.Proofs.BackendStages.ZeroData294
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets294_eq : Padded294.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys294 := by
  with_unfolding_all rfl
theorem zeroTargets294_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded294 acc = ZeroData.keys294.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets294_eq]
#print axioms zeroTargets294_eq
end InitECandidate.Proofs.BackendStages
