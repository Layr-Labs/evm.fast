import InitECandidate.Proofs.BackendStages.BytesData227
import InitECandidate.Proofs.BackendStages.BytePiecesData227
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section227_eq : ByteData.bytes227 = [piece227_0, piece227_1].flatten := by
  rw [piece227_0_eq, piece227_1_eq]
  rfl
#print axioms section227_eq
end InitECandidate.Proofs.BackendStages.BytePieces
