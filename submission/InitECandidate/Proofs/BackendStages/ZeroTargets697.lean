import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded697
import InitECandidate.Proofs.BackendStages.ZeroData697
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets697_eq : Padded697.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys697 := by
  with_unfolding_all rfl
theorem zeroTargets697_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded697 acc = ZeroData.keys697.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets697_eq]
#print axioms zeroTargets697_eq
end InitECandidate.Proofs.BackendStages
