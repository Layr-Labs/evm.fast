import InitECandidate.Proofs.BackendStages.BytesData440
import InitECandidate.Proofs.BackendStages.BytePiecesData440
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section440_eq : ByteData.bytes440 = [piece440_0].flatten := by
  rw [piece440_0_eq]
  rfl
#print axioms section440_eq
end InitECandidate.Proofs.BackendStages.BytePieces
