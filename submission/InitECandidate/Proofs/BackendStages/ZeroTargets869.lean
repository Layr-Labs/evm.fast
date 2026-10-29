import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded869
import InitECandidate.Proofs.BackendStages.ZeroData869
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets869_eq : Padded869.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys869 := by
  with_unfolding_all rfl
theorem zeroTargets869_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded869 acc = ZeroData.keys869.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets869_eq]
#print axioms zeroTargets869_eq
end InitECandidate.Proofs.BackendStages
