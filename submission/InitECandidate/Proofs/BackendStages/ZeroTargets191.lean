import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded191
import InitECandidate.Proofs.BackendStages.ZeroData191
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets191_eq : Padded191.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys191 := by
  with_unfolding_all rfl
theorem zeroTargets191_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded191 acc = ZeroData.keys191.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets191_eq]
#print axioms zeroTargets191_eq
end InitECandidate.Proofs.BackendStages
