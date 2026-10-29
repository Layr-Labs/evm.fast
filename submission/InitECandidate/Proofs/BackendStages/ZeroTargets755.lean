import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded755
import InitECandidate.Proofs.BackendStages.ZeroData755
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets755_eq : Padded755.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys755 := by
  with_unfolding_all rfl
theorem zeroTargets755_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded755 acc = ZeroData.keys755.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets755_eq]
#print axioms zeroTargets755_eq
end InitECandidate.Proofs.BackendStages
