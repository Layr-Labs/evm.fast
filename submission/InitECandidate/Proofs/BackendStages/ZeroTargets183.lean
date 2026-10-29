import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded183
import InitECandidate.Proofs.BackendStages.ZeroData183
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets183_eq : Padded183.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys183 := by
  with_unfolding_all rfl
theorem zeroTargets183_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded183 acc = ZeroData.keys183.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets183_eq]
#print axioms zeroTargets183_eq
end InitECandidate.Proofs.BackendStages
