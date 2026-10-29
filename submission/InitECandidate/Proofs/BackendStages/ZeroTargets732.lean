import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded732
import InitECandidate.Proofs.BackendStages.ZeroData732
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets732_eq : Padded732.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys732 := by
  with_unfolding_all rfl
theorem zeroTargets732_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded732 acc = ZeroData.keys732.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets732_eq]
#print axioms zeroTargets732_eq
end InitECandidate.Proofs.BackendStages
