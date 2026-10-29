import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded817
import InitECandidate.Proofs.BackendStages.ZeroData817
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets817_eq : Padded817.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys817 := by
  with_unfolding_all rfl
theorem zeroTargets817_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded817 acc = ZeroData.keys817.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets817_eq]
#print axioms zeroTargets817_eq
end InitECandidate.Proofs.BackendStages
