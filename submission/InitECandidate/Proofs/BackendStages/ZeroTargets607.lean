import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded607
import InitECandidate.Proofs.BackendStages.ZeroData607
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets607_eq : Padded607.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys607 := by
  with_unfolding_all rfl
theorem zeroTargets607_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded607 acc = ZeroData.keys607.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets607_eq]
#print axioms zeroTargets607_eq
end InitECandidate.Proofs.BackendStages
