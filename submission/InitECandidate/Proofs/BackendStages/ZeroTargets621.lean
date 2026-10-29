import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded621
import InitECandidate.Proofs.BackendStages.ZeroData621
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets621_eq : Padded621.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys621 := by
  with_unfolding_all rfl
theorem zeroTargets621_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded621 acc = ZeroData.keys621.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets621_eq]
#print axioms zeroTargets621_eq
end InitECandidate.Proofs.BackendStages
