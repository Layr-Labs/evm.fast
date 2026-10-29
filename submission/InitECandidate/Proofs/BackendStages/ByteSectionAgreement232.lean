import InitECandidate.Proofs.BackendStages.BytesData232
import InitECandidate.Proofs.BackendStages.BytePiecesData232
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section232_eq : ByteData.bytes232 = [piece232_0].flatten := by
  rw [piece232_0_eq]
  rfl
#print axioms section232_eq
end InitECandidate.Proofs.BackendStages.BytePieces
