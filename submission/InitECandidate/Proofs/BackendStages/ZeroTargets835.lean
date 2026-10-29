import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded835
import InitECandidate.Proofs.BackendStages.ZeroData835
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets835_eq : Padded835.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys835 := by
  with_unfolding_all rfl
theorem zeroTargets835_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded835 acc = ZeroData.keys835.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets835_eq]
#print axioms zeroTargets835_eq
end InitECandidate.Proofs.BackendStages
