import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded83
import InitECandidate.Proofs.BackendStages.ZeroData83
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets83_eq : Padded83.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys83 := by
  with_unfolding_all rfl
theorem zeroTargets83_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded83 acc = ZeroData.keys83.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets83_eq]
#print axioms zeroTargets83_eq
end InitECandidate.Proofs.BackendStages
