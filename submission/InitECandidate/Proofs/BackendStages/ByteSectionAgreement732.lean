import InitECandidate.Proofs.BackendStages.BytesData732
import InitECandidate.Proofs.BackendStages.BytePiecesData732
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section732_eq : ByteData.bytes732 = [piece732_0].flatten := by
  rw [piece732_0_eq]
  rfl
#print axioms section732_eq
end InitECandidate.Proofs.BackendStages.BytePieces
