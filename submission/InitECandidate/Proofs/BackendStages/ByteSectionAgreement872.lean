import InitECandidate.Proofs.BackendStages.BytesData872
import InitECandidate.Proofs.BackendStages.BytePiecesData872
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section872_eq : ByteData.bytes872 = [piece872_0].flatten := by
  rw [piece872_0_eq]
  rfl
#print axioms section872_eq
end InitECandidate.Proofs.BackendStages.BytePieces
