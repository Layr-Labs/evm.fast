import InitECandidate.Proofs.BackendStages.BytePiecesData550
import InitECandidate.Proofs.BackendStages.BytePiecesData551
import InitECandidate.Proofs.BackendStages.BytePiecesData552
import InitECandidate.Proofs.BackendStages.BytePiecesData553
import InitECandidate.Bytes100
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate100_eq : InitECandidate.bytes100 = [piece550_1, piece551_0, piece552_0, piece553_0].flatten := by
  rw [piece550_1_eq, piece551_0_eq, piece552_0_eq, piece553_0_eq]
  rfl
#print axioms candidate100_eq
end InitECandidate.Proofs.BackendStages.BytePieces
