import InitECandidate.Proofs.BackendStages.BytesData535
import InitECandidate.Proofs.BackendStages.BytePiecesData535
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section535_eq : ByteData.bytes535 = [piece535_0].flatten := by
  rw [piece535_0_eq]
  rfl
#print axioms section535_eq
end InitECandidate.Proofs.BackendStages.BytePieces
