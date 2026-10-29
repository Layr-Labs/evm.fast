import InitECandidate.Proofs.BackendStages.BytesData472
import InitECandidate.Proofs.BackendStages.BytePiecesData472
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section472_eq : ByteData.bytes472 = [piece472_0].flatten := by
  rw [piece472_0_eq]
  rfl
#print axioms section472_eq
end InitECandidate.Proofs.BackendStages.BytePieces
