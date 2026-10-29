import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded592
import InitECandidate.Proofs.BackendStages.ZeroData592
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets592_eq : Padded592.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys592 := by
  with_unfolding_all rfl
theorem zeroTargets592_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded592 acc = ZeroData.keys592.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets592_eq]
#print axioms zeroTargets592_eq
end InitECandidate.Proofs.BackendStages
