import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded701
import InitECandidate.Proofs.BackendStages.ZeroData701
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets701_eq : Padded701.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys701 := by
  with_unfolding_all rfl
theorem zeroTargets701_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded701 acc = ZeroData.keys701.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets701_eq]
#print axioms zeroTargets701_eq
end InitECandidate.Proofs.BackendStages
