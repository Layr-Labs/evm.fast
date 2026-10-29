import InitECandidate.Proofs.BackendStages.BytesData208
import InitECandidate.Proofs.BackendStages.BytePiecesData208
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section208_eq : ByteData.bytes208 = [piece208_0, piece208_1].flatten := by
  rw [piece208_0_eq, piece208_1_eq]
  rfl
#print axioms section208_eq
end InitECandidate.Proofs.BackendStages.BytePieces
