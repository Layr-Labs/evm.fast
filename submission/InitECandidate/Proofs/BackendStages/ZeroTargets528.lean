import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded528
import InitECandidate.Proofs.BackendStages.ZeroData528
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets528_eq : Padded528.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys528 := by
  with_unfolding_all rfl
theorem zeroTargets528_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded528 acc = ZeroData.keys528.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets528_eq]
#print axioms zeroTargets528_eq
end InitECandidate.Proofs.BackendStages
