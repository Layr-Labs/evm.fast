import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded185
import InitECandidate.Proofs.BackendStages.ZeroData185
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets185_eq : Padded185.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys185 := by
  with_unfolding_all rfl
theorem zeroTargets185_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded185 acc = ZeroData.keys185.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets185_eq]
#print axioms zeroTargets185_eq
end InitECandidate.Proofs.BackendStages
