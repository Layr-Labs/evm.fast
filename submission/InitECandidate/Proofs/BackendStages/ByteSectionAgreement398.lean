import InitECandidate.Proofs.BackendStages.BytesData398
import InitECandidate.Proofs.BackendStages.BytePiecesData398
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section398_eq : ByteData.bytes398 = [piece398_0, piece398_1].flatten := by
  rw [piece398_0_eq, piece398_1_eq]
  rfl
#print axioms section398_eq
end InitECandidate.Proofs.BackendStages.BytePieces
