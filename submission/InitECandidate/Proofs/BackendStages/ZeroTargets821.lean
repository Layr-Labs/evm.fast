import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded821
import InitECandidate.Proofs.BackendStages.ZeroData821
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets821_eq : Padded821.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys821 := by
  with_unfolding_all rfl
theorem zeroTargets821_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded821 acc = ZeroData.keys821.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets821_eq]
#print axioms zeroTargets821_eq
end InitECandidate.Proofs.BackendStages
