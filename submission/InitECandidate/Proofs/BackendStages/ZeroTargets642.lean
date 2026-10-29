import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded642
import InitECandidate.Proofs.BackendStages.ZeroData642
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets642_eq : Padded642.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys642 := by
  with_unfolding_all rfl
theorem zeroTargets642_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded642 acc = ZeroData.keys642.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets642_eq]
#print axioms zeroTargets642_eq
end InitECandidate.Proofs.BackendStages
