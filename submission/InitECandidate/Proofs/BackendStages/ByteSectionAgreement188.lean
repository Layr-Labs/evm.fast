import InitECandidate.Proofs.BackendStages.BytesData188
import InitECandidate.Proofs.BackendStages.BytePiecesData188
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section188_eq : ByteData.bytes188 = [piece188_0].flatten := by
  rw [piece188_0_eq]
  rfl
#print axioms section188_eq
end InitECandidate.Proofs.BackendStages.BytePieces
