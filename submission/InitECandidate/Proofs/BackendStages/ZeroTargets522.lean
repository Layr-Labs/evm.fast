import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded522
import InitECandidate.Proofs.BackendStages.ZeroData522
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets522_eq : Padded522.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys522 := by
  with_unfolding_all rfl
theorem zeroTargets522_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded522 acc = ZeroData.keys522.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets522_eq]
#print axioms zeroTargets522_eq
end InitECandidate.Proofs.BackendStages
