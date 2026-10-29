import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded848
import InitECandidate.Proofs.BackendStages.ZeroData848
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets848_eq : Padded848.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys848 := by
  with_unfolding_all rfl
theorem zeroTargets848_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded848 acc = ZeroData.keys848.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets848_eq]
#print axioms zeroTargets848_eq
end InitECandidate.Proofs.BackendStages
