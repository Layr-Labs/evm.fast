import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded131
import InitECandidate.Proofs.BackendStages.ZeroData131
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets131_eq : Padded131.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys131 := by
  with_unfolding_all rfl
theorem zeroTargets131_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded131 acc = ZeroData.keys131.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets131_eq]
#print axioms zeroTargets131_eq
end InitECandidate.Proofs.BackendStages
