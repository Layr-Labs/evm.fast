import InitECandidate.Proofs.BackendStages.BytesData274
import InitECandidate.Proofs.BackendStages.BytePiecesData274
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section274_eq : ByteData.bytes274 = [piece274_0, piece274_1].flatten := by
  rw [piece274_0_eq, piece274_1_eq]
  rfl
#print axioms section274_eq
end InitECandidate.Proofs.BackendStages.BytePieces
