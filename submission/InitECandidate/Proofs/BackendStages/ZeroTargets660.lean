import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded660
import InitECandidate.Proofs.BackendStages.ZeroData660
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets660_eq : Padded660.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys660 := by
  with_unfolding_all rfl
theorem zeroTargets660_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded660 acc = ZeroData.keys660.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets660_eq]
#print axioms zeroTargets660_eq
end InitECandidate.Proofs.BackendStages
