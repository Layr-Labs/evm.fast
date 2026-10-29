import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded323
import InitECandidate.Proofs.BackendStages.ZeroData323
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets323_eq : Padded323.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys323 := by
  with_unfolding_all rfl
theorem zeroTargets323_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded323 acc = ZeroData.keys323.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets323_eq]
#print axioms zeroTargets323_eq
end InitECandidate.Proofs.BackendStages
