import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded875
import InitECandidate.Proofs.BackendStages.ZeroData875
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets875_eq : Padded875.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys875 := by
  with_unfolding_all rfl
theorem zeroTargets875_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded875 acc = ZeroData.keys875.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets875_eq]
#print axioms zeroTargets875_eq
end InitECandidate.Proofs.BackendStages
