import InitECandidate.Proofs.BackendStages.BytesData877
import InitECandidate.Proofs.BackendStages.BytePiecesData877
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section877_eq : ByteData.bytes877 = [piece877_0, piece877_1].flatten := by
  rw [piece877_0_eq, piece877_1_eq]
  rfl
#print axioms section877_eq
end InitECandidate.Proofs.BackendStages.BytePieces
