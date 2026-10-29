import InitECandidate.Proofs.BackendStages.BytesData206
import InitECandidate.Proofs.BackendStages.BytePiecesData206
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section206_eq : ByteData.bytes206 = [piece206_0, piece206_1].flatten := by
  rw [piece206_0_eq, piece206_1_eq]
  rfl
#print axioms section206_eq
end InitECandidate.Proofs.BackendStages.BytePieces
