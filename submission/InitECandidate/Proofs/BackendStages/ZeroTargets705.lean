import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded705
import InitECandidate.Proofs.BackendStages.ZeroData705
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets705_eq : Padded705.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys705 := by
  with_unfolding_all rfl
theorem zeroTargets705_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded705 acc = ZeroData.keys705.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets705_eq]
#print axioms zeroTargets705_eq
end InitECandidate.Proofs.BackendStages
