import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded714
import InitECandidate.Proofs.BackendStages.ZeroData714
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets714_eq : Padded714.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys714 := by
  with_unfolding_all rfl
theorem zeroTargets714_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded714 acc = ZeroData.keys714.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets714_eq]
#print axioms zeroTargets714_eq
end InitECandidate.Proofs.BackendStages
