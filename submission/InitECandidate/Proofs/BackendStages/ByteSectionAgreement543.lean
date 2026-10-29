import InitECandidate.Proofs.BackendStages.BytesData543
import InitECandidate.Proofs.BackendStages.BytePiecesData543
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section543_eq : ByteData.bytes543 = [piece543_0, piece543_1].flatten := by
  rw [piece543_0_eq, piece543_1_eq]
  rfl
#print axioms section543_eq
end InitECandidate.Proofs.BackendStages.BytePieces
