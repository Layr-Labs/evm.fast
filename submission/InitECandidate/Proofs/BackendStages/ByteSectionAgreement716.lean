import InitECandidate.Proofs.BackendStages.BytesData716
import InitECandidate.Proofs.BackendStages.BytePiecesData716
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section716_eq : ByteData.bytes716 = [piece716_0].flatten := by
  rw [piece716_0_eq]
  rfl
#print axioms section716_eq
end InitECandidate.Proofs.BackendStages.BytePieces
