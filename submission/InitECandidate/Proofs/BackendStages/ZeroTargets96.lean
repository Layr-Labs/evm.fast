import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded96
import InitECandidate.Proofs.BackendStages.ZeroData96
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets96_eq : Padded96.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys96 := by
  with_unfolding_all rfl
theorem zeroTargets96_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded96 acc = ZeroData.keys96.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets96_eq]
#print axioms zeroTargets96_eq
end InitECandidate.Proofs.BackendStages
