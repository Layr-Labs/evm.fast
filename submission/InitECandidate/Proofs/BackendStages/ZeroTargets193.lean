import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded193
import InitECandidate.Proofs.BackendStages.ZeroData193
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets193_eq : Padded193.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys193 := by
  with_unfolding_all rfl
theorem zeroTargets193_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded193 acc = ZeroData.keys193.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets193_eq]
#print axioms zeroTargets193_eq
end InitECandidate.Proofs.BackendStages
