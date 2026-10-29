import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded449
import InitECandidate.Proofs.BackendStages.ZeroData449
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets449_eq : Padded449.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys449 := by
  with_unfolding_all rfl
theorem zeroTargets449_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded449 acc = ZeroData.keys449.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets449_eq]
#print axioms zeroTargets449_eq
end InitECandidate.Proofs.BackendStages
