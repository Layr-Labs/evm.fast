import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded443
import InitECandidate.Proofs.BackendStages.ZeroData443
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets443_eq : Padded443.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys443 := by
  with_unfolding_all rfl
theorem zeroTargets443_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded443 acc = ZeroData.keys443.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets443_eq]
#print axioms zeroTargets443_eq
end InitECandidate.Proofs.BackendStages
