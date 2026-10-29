import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded711
import InitECandidate.Proofs.BackendStages.ZeroData711
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets711_eq : Padded711.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys711 := by
  with_unfolding_all rfl
theorem zeroTargets711_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded711 acc = ZeroData.keys711.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets711_eq]
#print axioms zeroTargets711_eq
end InitECandidate.Proofs.BackendStages
