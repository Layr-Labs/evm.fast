import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded77
import InitECandidate.Proofs.BackendStages.ZeroData77
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets77_eq : Padded77.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys77 := by
  with_unfolding_all rfl
theorem zeroTargets77_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded77 acc = ZeroData.keys77.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets77_eq]
#print axioms zeroTargets77_eq
end InitECandidate.Proofs.BackendStages
