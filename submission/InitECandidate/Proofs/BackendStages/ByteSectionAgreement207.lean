import InitECandidate.Proofs.BackendStages.BytesData207
import InitECandidate.Proofs.BackendStages.BytePiecesData207
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section207_eq : ByteData.bytes207 = [piece207_0, piece207_1].flatten := by
  rw [piece207_0_eq, piece207_1_eq]
  rfl
#print axioms section207_eq
end InitECandidate.Proofs.BackendStages.BytePieces
