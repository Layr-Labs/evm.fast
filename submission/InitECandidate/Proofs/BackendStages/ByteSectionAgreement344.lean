import InitECandidate.Proofs.BackendStages.BytesData344
import InitECandidate.Proofs.BackendStages.BytePiecesData344
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section344_eq : ByteData.bytes344 = [piece344_0, piece344_1].flatten := by
  rw [piece344_0_eq, piece344_1_eq]
  rfl
#print axioms section344_eq
end InitECandidate.Proofs.BackendStages.BytePieces
