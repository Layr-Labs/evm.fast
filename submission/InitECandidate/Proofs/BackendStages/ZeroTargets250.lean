import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded250
import InitECandidate.Proofs.BackendStages.ZeroData250
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets250_eq : Padded250.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys250 := by
  with_unfolding_all rfl
theorem zeroTargets250_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded250 acc = ZeroData.keys250.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets250_eq]
#print axioms zeroTargets250_eq
end InitECandidate.Proofs.BackendStages
