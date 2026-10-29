import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded862
import InitECandidate.Proofs.BackendStages.ZeroData862
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets862_eq : Padded862.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys862 := by
  with_unfolding_all rfl
theorem zeroTargets862_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded862 acc = ZeroData.keys862.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets862_eq]
#print axioms zeroTargets862_eq
end InitECandidate.Proofs.BackendStages
