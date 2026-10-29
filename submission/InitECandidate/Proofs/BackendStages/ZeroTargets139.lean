import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded139
import InitECandidate.Proofs.BackendStages.ZeroData139
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets139_eq : Padded139.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys139 := by
  with_unfolding_all rfl
theorem zeroTargets139_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded139 acc = ZeroData.keys139.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets139_eq]
#print axioms zeroTargets139_eq
end InitECandidate.Proofs.BackendStages
