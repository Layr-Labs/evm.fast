import InitECandidate.Proofs.BackendStages.BytesData193
import InitECandidate.Proofs.BackendStages.BytePiecesData193
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section193_eq : ByteData.bytes193 = [piece193_0].flatten := by
  rw [piece193_0_eq]
  rfl
#print axioms section193_eq
end InitECandidate.Proofs.BackendStages.BytePieces
