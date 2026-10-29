import InitECandidate.Proofs.BackendStages.BytesData212
import InitECandidate.Proofs.BackendStages.BytePiecesData212
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section212_eq : ByteData.bytes212 = [piece212_0].flatten := by
  rw [piece212_0_eq]
  rfl
#print axioms section212_eq
end InitECandidate.Proofs.BackendStages.BytePieces
