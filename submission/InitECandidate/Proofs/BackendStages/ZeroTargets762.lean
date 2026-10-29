import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded762
import InitECandidate.Proofs.BackendStages.ZeroData762
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets762_eq : Padded762.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys762 := by
  with_unfolding_all rfl
theorem zeroTargets762_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded762 acc = ZeroData.keys762.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets762_eq]
#print axioms zeroTargets762_eq
end InitECandidate.Proofs.BackendStages
