import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded263
import InitECandidate.Proofs.BackendStages.ZeroData263
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets263_eq : Padded263.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys263 := by
  with_unfolding_all rfl
theorem zeroTargets263_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded263 acc = ZeroData.keys263.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets263_eq]
#print axioms zeroTargets263_eq
end InitECandidate.Proofs.BackendStages
