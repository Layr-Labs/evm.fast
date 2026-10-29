import InitECandidate.Proofs.BackendStages.BytesData221
import InitECandidate.Proofs.BackendStages.BytePiecesData221
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section221_eq : ByteData.bytes221 = [piece221_0].flatten := by
  rw [piece221_0_eq]
  rfl
#print axioms section221_eq
end InitECandidate.Proofs.BackendStages.BytePieces
