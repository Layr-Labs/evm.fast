import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded618
import InitECandidate.Proofs.BackendStages.ZeroData618
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets618_eq : Padded618.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys618 := by
  with_unfolding_all rfl
theorem zeroTargets618_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded618 acc = ZeroData.keys618.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets618_eq]
#print axioms zeroTargets618_eq
end InitECandidate.Proofs.BackendStages
