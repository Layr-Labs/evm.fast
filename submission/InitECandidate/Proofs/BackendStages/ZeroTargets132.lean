import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded132
import InitECandidate.Proofs.BackendStages.ZeroData132
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets132_eq : Padded132.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys132 := by
  with_unfolding_all rfl
theorem zeroTargets132_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded132 acc = ZeroData.keys132.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets132_eq]
#print axioms zeroTargets132_eq
end InitECandidate.Proofs.BackendStages
