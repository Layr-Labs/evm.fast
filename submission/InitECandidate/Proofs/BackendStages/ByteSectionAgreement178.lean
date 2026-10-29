import InitECandidate.Proofs.BackendStages.BytesData178
import InitECandidate.Proofs.BackendStages.BytePiecesData178
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section178_eq : ByteData.bytes178 = [piece178_0].flatten := by
  rw [piece178_0_eq]
  rfl
#print axioms section178_eq
end InitECandidate.Proofs.BackendStages.BytePieces
