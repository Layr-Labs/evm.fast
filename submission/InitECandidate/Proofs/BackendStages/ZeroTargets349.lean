import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded349
import InitECandidate.Proofs.BackendStages.ZeroData349
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets349_eq : Padded349.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys349 := by
  with_unfolding_all rfl
theorem zeroTargets349_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded349 acc = ZeroData.keys349.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets349_eq]
#print axioms zeroTargets349_eq
end InitECandidate.Proofs.BackendStages
