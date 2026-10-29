import InitECandidate.Proofs.BackendStages.BytesData275
import InitECandidate.Proofs.BackendStages.BytePiecesData275
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section275_eq : ByteData.bytes275 = [piece275_0].flatten := by
  rw [piece275_0_eq]
  rfl
#print axioms section275_eq
end InitECandidate.Proofs.BackendStages.BytePieces
