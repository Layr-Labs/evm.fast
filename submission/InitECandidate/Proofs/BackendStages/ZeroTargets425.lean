import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded425
import InitECandidate.Proofs.BackendStages.ZeroData425
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets425_eq : Padded425.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys425 := by
  with_unfolding_all rfl
theorem zeroTargets425_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded425 acc = ZeroData.keys425.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets425_eq]
#print axioms zeroTargets425_eq
end InitECandidate.Proofs.BackendStages
