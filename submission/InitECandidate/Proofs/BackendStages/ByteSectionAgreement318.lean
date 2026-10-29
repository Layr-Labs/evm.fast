import InitECandidate.Proofs.BackendStages.BytesData318
import InitECandidate.Proofs.BackendStages.BytePiecesData318
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section318_eq : ByteData.bytes318 = [piece318_0].flatten := by
  rw [piece318_0_eq]
  rfl
#print axioms section318_eq
end InitECandidate.Proofs.BackendStages.BytePieces
