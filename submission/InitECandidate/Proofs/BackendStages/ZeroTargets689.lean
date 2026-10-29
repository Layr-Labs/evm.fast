import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded689
import InitECandidate.Proofs.BackendStages.ZeroData689
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets689_eq : Padded689.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys689 := by
  with_unfolding_all rfl
theorem zeroTargets689_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded689 acc = ZeroData.keys689.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets689_eq]
#print axioms zeroTargets689_eq
end InitECandidate.Proofs.BackendStages
