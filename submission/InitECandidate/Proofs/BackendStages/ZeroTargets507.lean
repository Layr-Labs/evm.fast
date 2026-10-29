import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded507
import InitECandidate.Proofs.BackendStages.ZeroData507
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets507_eq : Padded507.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys507 := by
  with_unfolding_all rfl
theorem zeroTargets507_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded507 acc = ZeroData.keys507.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets507_eq]
#print axioms zeroTargets507_eq
end InitECandidate.Proofs.BackendStages
