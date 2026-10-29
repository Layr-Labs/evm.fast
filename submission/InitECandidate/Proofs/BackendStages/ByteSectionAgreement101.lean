import InitECandidate.Proofs.BackendStages.BytesData101
import InitECandidate.Proofs.BackendStages.BytePiecesData101
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section101_eq : ByteData.bytes101 = [piece101_0].flatten := by
  rw [piece101_0_eq]
  rfl
#print axioms section101_eq
end InitECandidate.Proofs.BackendStages.BytePieces
