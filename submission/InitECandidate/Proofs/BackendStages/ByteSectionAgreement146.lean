import InitECandidate.Proofs.BackendStages.BytesData146
import InitECandidate.Proofs.BackendStages.BytePiecesData146
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section146_eq : ByteData.bytes146 = [piece146_0].flatten := by
  rw [piece146_0_eq]
  rfl
#print axioms section146_eq
end InitECandidate.Proofs.BackendStages.BytePieces
