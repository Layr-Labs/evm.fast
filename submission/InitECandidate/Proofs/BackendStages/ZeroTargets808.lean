import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded808
import InitECandidate.Proofs.BackendStages.ZeroData808
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets808_eq : Padded808.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys808 := by
  with_unfolding_all rfl
theorem zeroTargets808_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded808 acc = ZeroData.keys808.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets808_eq]
#print axioms zeroTargets808_eq
end InitECandidate.Proofs.BackendStages
