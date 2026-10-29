import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded668
import InitECandidate.Proofs.BackendStages.ZeroData668
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets668_eq : Padded668.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys668 := by
  with_unfolding_all rfl
theorem zeroTargets668_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded668 acc = ZeroData.keys668.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets668_eq]
#print axioms zeroTargets668_eq
end InitECandidate.Proofs.BackendStages
