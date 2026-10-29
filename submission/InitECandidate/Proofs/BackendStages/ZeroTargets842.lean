import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded842
import InitECandidate.Proofs.BackendStages.ZeroData842
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets842_eq : Padded842.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys842 := by
  with_unfolding_all rfl
theorem zeroTargets842_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded842 acc = ZeroData.keys842.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets842_eq]
#print axioms zeroTargets842_eq
end InitECandidate.Proofs.BackendStages
