import InitECandidate.Proofs.BackendStages.BytesData822
import InitECandidate.Proofs.BackendStages.BytePiecesData822
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section822_eq : ByteData.bytes822 = [piece822_0].flatten := by
  rw [piece822_0_eq]
  rfl
#print axioms section822_eq
end InitECandidate.Proofs.BackendStages.BytePieces
