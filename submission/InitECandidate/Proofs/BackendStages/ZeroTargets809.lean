import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded809
import InitECandidate.Proofs.BackendStages.ZeroData809
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets809_eq : Padded809.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys809 := by
  with_unfolding_all rfl
theorem zeroTargets809_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded809 acc = ZeroData.keys809.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets809_eq]
#print axioms zeroTargets809_eq
end InitECandidate.Proofs.BackendStages
