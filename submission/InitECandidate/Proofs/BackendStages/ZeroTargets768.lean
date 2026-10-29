import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded768
import InitECandidate.Proofs.BackendStages.ZeroData768
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets768_eq : Padded768.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys768 := by
  with_unfolding_all rfl
theorem zeroTargets768_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded768 acc = ZeroData.keys768.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets768_eq]
#print axioms zeroTargets768_eq
end InitECandidate.Proofs.BackendStages
