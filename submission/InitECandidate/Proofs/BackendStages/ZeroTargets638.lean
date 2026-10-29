import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded638
import InitECandidate.Proofs.BackendStages.ZeroData638
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets638_eq : Padded638.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys638 := by
  with_unfolding_all rfl
theorem zeroTargets638_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded638 acc = ZeroData.keys638.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets638_eq]
#print axioms zeroTargets638_eq
end InitECandidate.Proofs.BackendStages
