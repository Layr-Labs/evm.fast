import InitECandidate.Proofs.BackendStages.BytesData817
import InitECandidate.Proofs.BackendStages.BytePiecesData817
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section817_eq : ByteData.bytes817 = [piece817_0, piece817_1].flatten := by
  rw [piece817_0_eq, piece817_1_eq]
  rfl
#print axioms section817_eq
end InitECandidate.Proofs.BackendStages.BytePieces
