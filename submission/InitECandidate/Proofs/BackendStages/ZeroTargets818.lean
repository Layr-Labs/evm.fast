import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded818
import InitECandidate.Proofs.BackendStages.ZeroData818
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets818_eq : Padded818.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys818 := by
  with_unfolding_all rfl
theorem zeroTargets818_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded818 acc = ZeroData.keys818.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets818_eq]
#print axioms zeroTargets818_eq
end InitECandidate.Proofs.BackendStages
