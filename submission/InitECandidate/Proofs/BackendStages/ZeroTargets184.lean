import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded184
import InitECandidate.Proofs.BackendStages.ZeroData184
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets184_eq : Padded184.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys184 := by
  with_unfolding_all rfl
theorem zeroTargets184_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded184 acc = ZeroData.keys184.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets184_eq]
#print axioms zeroTargets184_eq
end InitECandidate.Proofs.BackendStages
