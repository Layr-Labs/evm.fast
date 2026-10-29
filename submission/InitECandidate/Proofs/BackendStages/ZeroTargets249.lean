import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded249
import InitECandidate.Proofs.BackendStages.ZeroData249
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets249_eq : Padded249.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys249 := by
  with_unfolding_all rfl
theorem zeroTargets249_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded249 acc = ZeroData.keys249.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets249_eq]
#print axioms zeroTargets249_eq
end InitECandidate.Proofs.BackendStages
