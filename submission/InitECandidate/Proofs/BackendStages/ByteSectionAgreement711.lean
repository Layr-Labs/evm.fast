import InitECandidate.Proofs.BackendStages.BytesData711
import InitECandidate.Proofs.BackendStages.BytePiecesData711
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section711_eq : ByteData.bytes711 = [piece711_0].flatten := by
  rw [piece711_0_eq]
  rfl
#print axioms section711_eq
end InitECandidate.Proofs.BackendStages.BytePieces
