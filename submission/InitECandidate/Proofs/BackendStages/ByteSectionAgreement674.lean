import InitECandidate.Proofs.BackendStages.BytesData674
import InitECandidate.Proofs.BackendStages.BytePiecesData674
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section674_eq : ByteData.bytes674 = [piece674_0].flatten := by
  rw [piece674_0_eq]
  rfl
#print axioms section674_eq
end InitECandidate.Proofs.BackendStages.BytePieces
