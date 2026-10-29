import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded239
import InitECandidate.Proofs.BackendStages.ZeroData239
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets239_eq : Padded239.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys239 := by
  with_unfolding_all rfl
theorem zeroTargets239_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded239 acc = ZeroData.keys239.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets239_eq]
#print axioms zeroTargets239_eq
end InitECandidate.Proofs.BackendStages
