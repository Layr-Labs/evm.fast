import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded746
import InitECandidate.Proofs.BackendStages.ZeroData746
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets746_eq : Padded746.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys746 := by
  with_unfolding_all rfl
theorem zeroTargets746_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded746 acc = ZeroData.keys746.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets746_eq]
#print axioms zeroTargets746_eq
end InitECandidate.Proofs.BackendStages
