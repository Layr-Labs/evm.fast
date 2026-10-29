import InitECandidate.Proofs.BackendStages.BytesData270
import InitECandidate.Proofs.BackendStages.BytePiecesData270
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section270_eq : ByteData.bytes270 = [piece270_0].flatten := by
  rw [piece270_0_eq]
  rfl
#print axioms section270_eq
end InitECandidate.Proofs.BackendStages.BytePieces
