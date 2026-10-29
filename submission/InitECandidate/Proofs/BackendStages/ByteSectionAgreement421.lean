import InitECandidate.Proofs.BackendStages.BytesData421
import InitECandidate.Proofs.BackendStages.BytePiecesData421
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section421_eq : ByteData.bytes421 = [piece421_0].flatten := by
  rw [piece421_0_eq]
  rfl
#print axioms section421_eq
end InitECandidate.Proofs.BackendStages.BytePieces
