import InitECandidate.Proofs.BackendStages.BytesData509
import InitECandidate.Proofs.BackendStages.BytePiecesData509
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section509_eq : ByteData.bytes509 = [piece509_0].flatten := by
  rw [piece509_0_eq]
  rfl
#print axioms section509_eq
end InitECandidate.Proofs.BackendStages.BytePieces
