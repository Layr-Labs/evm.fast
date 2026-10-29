import InitECandidate.Proofs.BackendStages.BytesData546
import InitECandidate.Proofs.BackendStages.BytePiecesData546
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section546_eq : ByteData.bytes546 = [piece546_0, piece546_1].flatten := by
  rw [piece546_0_eq, piece546_1_eq]
  rfl
#print axioms section546_eq
end InitECandidate.Proofs.BackendStages.BytePieces
