import InitECandidate.Proofs.BackendStages.BytePiecesData498
import InitECandidate.Proofs.BackendStages.BytePiecesData499
import InitECandidate.Proofs.BackendStages.BytePiecesData500
import InitECandidate.Proofs.BackendStages.BytePiecesData501
import InitECandidate.Proofs.BackendStages.BytePiecesData502
import InitECandidate.Proofs.BackendStages.BytePiecesData503
import InitECandidate.Bytes090
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate090_eq : InitECandidate.bytes090 = [piece498_1, piece499_0, piece500_0, piece501_0, piece502_0, piece503_0].flatten := by
  rw [piece498_1_eq, piece499_0_eq, piece500_0_eq, piece501_0_eq, piece502_0_eq, piece503_0_eq]
  rfl
#print axioms candidate090_eq
end InitECandidate.Proofs.BackendStages.BytePieces
