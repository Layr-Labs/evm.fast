import InitECandidate.Proofs.BackendStages.BytesData831
import InitECandidate.Proofs.BackendStages.BytePiecesData831
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section831_eq : ByteData.bytes831 = [piece831_0, piece831_1].flatten := by
  rw [piece831_0_eq, piece831_1_eq]
  rfl
#print axioms section831_eq
end InitECandidate.Proofs.BackendStages.BytePieces
