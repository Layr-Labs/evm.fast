import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded728
import InitECandidate.Proofs.BackendStages.ZeroData728
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets728_eq : Padded728.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys728 := by
  with_unfolding_all rfl
theorem zeroTargets728_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded728 acc = ZeroData.keys728.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets728_eq]
#print axioms zeroTargets728_eq
end InitECandidate.Proofs.BackendStages
