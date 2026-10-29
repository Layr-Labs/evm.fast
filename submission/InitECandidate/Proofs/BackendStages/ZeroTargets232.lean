import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded232
import InitECandidate.Proofs.BackendStages.ZeroData232
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets232_eq : Padded232.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys232 := by
  with_unfolding_all rfl
theorem zeroTargets232_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded232 acc = ZeroData.keys232.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets232_eq]
#print axioms zeroTargets232_eq
end InitECandidate.Proofs.BackendStages
