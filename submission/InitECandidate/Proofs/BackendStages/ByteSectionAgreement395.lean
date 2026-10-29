import InitECandidate.Proofs.BackendStages.BytesData395
import InitECandidate.Proofs.BackendStages.BytePiecesData395
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section395_eq : ByteData.bytes395 = [piece395_0].flatten := by
  rw [piece395_0_eq]
  rfl
#print axioms section395_eq
end InitECandidate.Proofs.BackendStages.BytePieces
