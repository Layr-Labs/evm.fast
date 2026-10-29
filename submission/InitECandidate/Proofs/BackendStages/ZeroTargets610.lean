import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded610
import InitECandidate.Proofs.BackendStages.ZeroData610
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets610_eq : Padded610.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys610 := by
  with_unfolding_all rfl
theorem zeroTargets610_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded610 acc = ZeroData.keys610.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets610_eq]
#print axioms zeroTargets610_eq
end InitECandidate.Proofs.BackendStages
