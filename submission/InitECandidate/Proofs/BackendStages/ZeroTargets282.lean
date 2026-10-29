import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded282
import InitECandidate.Proofs.BackendStages.ZeroData282
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets282_eq : Padded282.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys282 := by
  with_unfolding_all rfl
theorem zeroTargets282_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded282 acc = ZeroData.keys282.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets282_eq]
#print axioms zeroTargets282_eq
end InitECandidate.Proofs.BackendStages
