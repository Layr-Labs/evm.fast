import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded725
import InitECandidate.Proofs.BackendStages.ZeroData725
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets725_eq : Padded725.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys725 := by
  with_unfolding_all rfl
theorem zeroTargets725_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded725 acc = ZeroData.keys725.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets725_eq]
#print axioms zeroTargets725_eq
end InitECandidate.Proofs.BackendStages
