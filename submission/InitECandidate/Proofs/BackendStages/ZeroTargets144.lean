import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded144
import InitECandidate.Proofs.BackendStages.ZeroData144
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets144_eq : Padded144.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys144 := by
  with_unfolding_all rfl
theorem zeroTargets144_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded144 acc = ZeroData.keys144.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets144_eq]
#print axioms zeroTargets144_eq
end InitECandidate.Proofs.BackendStages
