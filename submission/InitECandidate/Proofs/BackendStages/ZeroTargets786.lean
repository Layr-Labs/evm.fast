import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded786
import InitECandidate.Proofs.BackendStages.ZeroData786
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets786_eq : Padded786.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys786 := by
  with_unfolding_all rfl
theorem zeroTargets786_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded786 acc = ZeroData.keys786.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets786_eq]
#print axioms zeroTargets786_eq
end InitECandidate.Proofs.BackendStages
