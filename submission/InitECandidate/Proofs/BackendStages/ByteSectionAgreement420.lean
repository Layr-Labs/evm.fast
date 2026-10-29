import InitECandidate.Proofs.BackendStages.BytesData420
import InitECandidate.Proofs.BackendStages.BytePiecesData420
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section420_eq : ByteData.bytes420 = [piece420_0].flatten := by
  rw [piece420_0_eq]
  rfl
#print axioms section420_eq
end InitECandidate.Proofs.BackendStages.BytePieces
