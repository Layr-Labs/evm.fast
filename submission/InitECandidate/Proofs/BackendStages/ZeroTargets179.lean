import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded179
import InitECandidate.Proofs.BackendStages.ZeroData179
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets179_eq : Padded179.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys179 := by
  with_unfolding_all rfl
theorem zeroTargets179_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded179 acc = ZeroData.keys179.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets179_eq]
#print axioms zeroTargets179_eq
end InitECandidate.Proofs.BackendStages
