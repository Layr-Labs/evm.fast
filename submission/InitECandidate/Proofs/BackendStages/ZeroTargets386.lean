import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded386
import InitECandidate.Proofs.BackendStages.ZeroData386
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets386_eq : Padded386.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys386 := by
  with_unfolding_all rfl
theorem zeroTargets386_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded386 acc = ZeroData.keys386.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets386_eq]
#print axioms zeroTargets386_eq
end InitECandidate.Proofs.BackendStages
