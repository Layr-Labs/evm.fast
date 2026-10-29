import InitECandidate.Proofs.BackendStages.BytesData64
import InitECandidate.Proofs.BackendStages.BytePiecesData64
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section64_eq : ByteData.bytes64 = [piece64_0].flatten := by
  rw [piece64_0_eq]
  rfl
#print axioms section64_eq
end InitECandidate.Proofs.BackendStages.BytePieces
