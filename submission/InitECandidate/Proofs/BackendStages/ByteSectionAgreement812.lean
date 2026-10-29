import InitECandidate.Proofs.BackendStages.BytesData812
import InitECandidate.Proofs.BackendStages.BytePiecesData812
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section812_eq : ByteData.bytes812 = [piece812_0].flatten := by
  rw [piece812_0_eq]
  rfl
#print axioms section812_eq
end InitECandidate.Proofs.BackendStages.BytePieces
