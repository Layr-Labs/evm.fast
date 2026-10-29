import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded418
import InitECandidate.Proofs.BackendStages.ZeroData418
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets418_eq : Padded418.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys418 := by
  with_unfolding_all rfl
theorem zeroTargets418_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded418 acc = ZeroData.keys418.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets418_eq]
#print axioms zeroTargets418_eq
end InitECandidate.Proofs.BackendStages
