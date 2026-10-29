import InitECandidate.Proofs.BackendStages.BytesData86
import InitECandidate.Proofs.BackendStages.BytePiecesData86
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section86_eq : ByteData.bytes86 = [piece86_0].flatten := by
  rw [piece86_0_eq]
  rfl
#print axioms section86_eq
end InitECandidate.Proofs.BackendStages.BytePieces
