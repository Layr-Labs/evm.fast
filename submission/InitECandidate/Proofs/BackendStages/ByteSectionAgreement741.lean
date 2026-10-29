import InitECandidate.Proofs.BackendStages.BytesData741
import InitECandidate.Proofs.BackendStages.BytePiecesData741
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section741_eq : ByteData.bytes741 = [piece741_0, piece741_1].flatten := by
  rw [piece741_0_eq, piece741_1_eq]
  rfl
#print axioms section741_eq
end InitECandidate.Proofs.BackendStages.BytePieces
