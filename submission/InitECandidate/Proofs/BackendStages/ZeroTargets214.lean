import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded214
import InitECandidate.Proofs.BackendStages.ZeroData214
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets214_eq : Padded214.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys214 := by
  with_unfolding_all rfl
theorem zeroTargets214_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded214 acc = ZeroData.keys214.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets214_eq]
#print axioms zeroTargets214_eq
end InitECandidate.Proofs.BackendStages
