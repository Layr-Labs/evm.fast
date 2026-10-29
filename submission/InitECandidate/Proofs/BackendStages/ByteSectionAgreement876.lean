import InitECandidate.Proofs.BackendStages.BytesData876
import InitECandidate.Proofs.BackendStages.BytePiecesData876
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section876_eq : ByteData.bytes876 = [piece876_0].flatten := by
  rw [piece876_0_eq]
  rfl
#print axioms section876_eq
end InitECandidate.Proofs.BackendStages.BytePieces
