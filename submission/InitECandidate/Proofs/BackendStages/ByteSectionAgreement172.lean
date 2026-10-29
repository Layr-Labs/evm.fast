import InitECandidate.Proofs.BackendStages.BytesData172
import InitECandidate.Proofs.BackendStages.BytePiecesData172
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section172_eq : ByteData.bytes172 = [piece172_0].flatten := by
  rw [piece172_0_eq]
  rfl
#print axioms section172_eq
end InitECandidate.Proofs.BackendStages.BytePieces
