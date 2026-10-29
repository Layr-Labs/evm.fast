import InitECandidate.Proofs.BackendStages.BytesData448
import InitECandidate.Proofs.BackendStages.BytePiecesData448
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section448_eq : ByteData.bytes448 = [piece448_0].flatten := by
  rw [piece448_0_eq]
  rfl
#print axioms section448_eq
end InitECandidate.Proofs.BackendStages.BytePieces
