import InitECandidate.Proofs.BackendStages.BytesData852
import InitECandidate.Proofs.BackendStages.BytePiecesData852
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section852_eq : ByteData.bytes852 = [piece852_0, piece852_1].flatten := by
  rw [piece852_0_eq, piece852_1_eq]
  rfl
#print axioms section852_eq
end InitECandidate.Proofs.BackendStages.BytePieces
