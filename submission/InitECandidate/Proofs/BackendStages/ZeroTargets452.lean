import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded452
import InitECandidate.Proofs.BackendStages.ZeroData452
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets452_eq : Padded452.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys452 := by
  with_unfolding_all rfl
theorem zeroTargets452_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded452 acc = ZeroData.keys452.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets452_eq]
#print axioms zeroTargets452_eq
end InitECandidate.Proofs.BackendStages
