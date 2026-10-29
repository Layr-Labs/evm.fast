import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded357
import InitECandidate.Proofs.BackendStages.ZeroData357
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets357_eq : Padded357.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys357 := by
  with_unfolding_all rfl
theorem zeroTargets357_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded357 acc = ZeroData.keys357.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets357_eq]
#print axioms zeroTargets357_eq
end InitECandidate.Proofs.BackendStages
