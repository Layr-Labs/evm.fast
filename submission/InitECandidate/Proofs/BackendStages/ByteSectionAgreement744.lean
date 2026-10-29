import InitECandidate.Proofs.BackendStages.BytesData744
import InitECandidate.Proofs.BackendStages.BytePiecesData744
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section744_eq : ByteData.bytes744 = [piece744_0, piece744_1].flatten := by
  rw [piece744_0_eq, piece744_1_eq]
  rfl
#print axioms section744_eq
end InitECandidate.Proofs.BackendStages.BytePieces
