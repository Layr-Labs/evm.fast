import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded126
import InitECandidate.Proofs.BackendStages.ZeroData126
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets126_eq : Padded126.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys126 := by
  with_unfolding_all rfl
theorem zeroTargets126_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded126 acc = ZeroData.keys126.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets126_eq]
#print axioms zeroTargets126_eq
end InitECandidate.Proofs.BackendStages
