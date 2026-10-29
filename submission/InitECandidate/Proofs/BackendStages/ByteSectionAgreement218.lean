import InitECandidate.Proofs.BackendStages.BytesData218
import InitECandidate.Proofs.BackendStages.BytePiecesData218
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section218_eq : ByteData.bytes218 = [piece218_0].flatten := by
  rw [piece218_0_eq]
  rfl
#print axioms section218_eq
end InitECandidate.Proofs.BackendStages.BytePieces
