import InitECandidate.Proofs.BackendStages.BytesData450
import InitECandidate.Proofs.BackendStages.BytePiecesData450
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section450_eq : ByteData.bytes450 = [piece450_0, piece450_1].flatten := by
  rw [piece450_0_eq, piece450_1_eq]
  rfl
#print axioms section450_eq
end InitECandidate.Proofs.BackendStages.BytePieces
