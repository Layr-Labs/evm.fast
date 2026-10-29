import InitECandidate.Proofs.BackendStages.BytesData119
import InitECandidate.Proofs.BackendStages.BytePiecesData119
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section119_eq : ByteData.bytes119 = [piece119_0].flatten := by
  rw [piece119_0_eq]
  rfl
#print axioms section119_eq
end InitECandidate.Proofs.BackendStages.BytePieces
