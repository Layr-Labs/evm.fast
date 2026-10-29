import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded318
import InitECandidate.Proofs.BackendStages.ZeroData318
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets318_eq : Padded318.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys318 := by
  with_unfolding_all rfl
theorem zeroTargets318_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded318 acc = ZeroData.keys318.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets318_eq]
#print axioms zeroTargets318_eq
end InitECandidate.Proofs.BackendStages
