import InitECandidate.Proofs.BackendStages.BytesData347
import InitECandidate.Proofs.BackendStages.BytePiecesData347
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section347_eq : ByteData.bytes347 = [piece347_0].flatten := by
  rw [piece347_0_eq]
  rfl
#print axioms section347_eq
end InitECandidate.Proofs.BackendStages.BytePieces
