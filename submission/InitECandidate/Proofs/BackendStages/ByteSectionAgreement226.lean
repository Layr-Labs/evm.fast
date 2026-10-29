import InitECandidate.Proofs.BackendStages.BytesData226
import InitECandidate.Proofs.BackendStages.BytePiecesData226
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section226_eq : ByteData.bytes226 = [piece226_0].flatten := by
  rw [piece226_0_eq]
  rfl
#print axioms section226_eq
end InitECandidate.Proofs.BackendStages.BytePieces
