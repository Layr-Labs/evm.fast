import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded421
import InitECandidate.Proofs.BackendStages.ZeroData421
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets421_eq : Padded421.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys421 := by
  with_unfolding_all rfl
theorem zeroTargets421_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded421 acc = ZeroData.keys421.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets421_eq]
#print axioms zeroTargets421_eq
end InitECandidate.Proofs.BackendStages
