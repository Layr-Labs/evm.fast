import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded152
import InitECandidate.Proofs.BackendStages.ZeroData152
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets152_eq : Padded152.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys152 := by
  with_unfolding_all rfl
theorem zeroTargets152_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded152 acc = ZeroData.keys152.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets152_eq]
#print axioms zeroTargets152_eq
end InitECandidate.Proofs.BackendStages
