import InitECandidate.Proofs.BackendStages.BytesData311
import InitECandidate.Proofs.BackendStages.BytePiecesData311
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section311_eq : ByteData.bytes311 = [piece311_0].flatten := by
  rw [piece311_0_eq]
  rfl
#print axioms section311_eq
end InitECandidate.Proofs.BackendStages.BytePieces
