import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded251
import InitECandidate.Proofs.BackendStages.ZeroData251
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets251_eq : Padded251.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys251 := by
  with_unfolding_all rfl
theorem zeroTargets251_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded251 acc = ZeroData.keys251.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets251_eq]
#print axioms zeroTargets251_eq
end InitECandidate.Proofs.BackendStages
