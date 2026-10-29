import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded867
import InitECandidate.Proofs.BackendStages.ZeroData867
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets867_eq : Padded867.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys867 := by
  with_unfolding_all rfl
theorem zeroTargets867_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded867 acc = ZeroData.keys867.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets867_eq]
#print axioms zeroTargets867_eq
end InitECandidate.Proofs.BackendStages
