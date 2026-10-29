import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded492
import InitECandidate.Proofs.BackendStages.ZeroData492
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets492_eq : Padded492.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys492 := by
  with_unfolding_all rfl
theorem zeroTargets492_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded492 acc = ZeroData.keys492.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets492_eq]
#print axioms zeroTargets492_eq
end InitECandidate.Proofs.BackendStages
