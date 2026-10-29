import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded829
import InitECandidate.Proofs.BackendStages.ZeroData829
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets829_eq : Padded829.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys829 := by
  with_unfolding_all rfl
theorem zeroTargets829_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded829 acc = ZeroData.keys829.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets829_eq]
#print axioms zeroTargets829_eq
end InitECandidate.Proofs.BackendStages
