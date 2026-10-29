import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded816
import InitECandidate.Proofs.BackendStages.ZeroData816
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets816_eq : Padded816.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys816 := by
  with_unfolding_all rfl
theorem zeroTargets816_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded816 acc = ZeroData.keys816.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets816_eq]
#print axioms zeroTargets816_eq
end InitECandidate.Proofs.BackendStages
