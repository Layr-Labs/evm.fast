import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded233
import InitECandidate.Proofs.BackendStages.ZeroData233
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets233_eq : Padded233.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys233 := by
  with_unfolding_all rfl
theorem zeroTargets233_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded233 acc = ZeroData.keys233.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets233_eq]
#print axioms zeroTargets233_eq
end InitECandidate.Proofs.BackendStages
