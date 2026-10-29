import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded591
import InitECandidate.Proofs.BackendStages.ZeroData591
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets591_eq : Padded591.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys591 := by
  with_unfolding_all rfl
theorem zeroTargets591_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded591 acc = ZeroData.keys591.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets591_eq]
#print axioms zeroTargets591_eq
end InitECandidate.Proofs.BackendStages
