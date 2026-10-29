import InitECandidate.Proofs.BackendStages.BytesData446
import InitECandidate.Proofs.BackendStages.BytePiecesData446
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section446_eq : ByteData.bytes446 = [piece446_0].flatten := by
  rw [piece446_0_eq]
  rfl
#print axioms section446_eq
end InitECandidate.Proofs.BackendStages.BytePieces
