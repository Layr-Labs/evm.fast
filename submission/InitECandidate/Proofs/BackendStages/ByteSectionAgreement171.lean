import InitECandidate.Proofs.BackendStages.BytesData171
import InitECandidate.Proofs.BackendStages.BytePiecesData171
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section171_eq : ByteData.bytes171 = [piece171_0].flatten := by
  rw [piece171_0_eq]
  rfl
#print axioms section171_eq
end InitECandidate.Proofs.BackendStages.BytePieces
