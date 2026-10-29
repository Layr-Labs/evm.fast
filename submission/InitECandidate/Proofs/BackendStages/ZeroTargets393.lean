import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded393
import InitECandidate.Proofs.BackendStages.ZeroData393
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets393_eq : Padded393.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys393 := by
  with_unfolding_all rfl
theorem zeroTargets393_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded393 acc = ZeroData.keys393.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets393_eq]
#print axioms zeroTargets393_eq
end InitECandidate.Proofs.BackendStages
