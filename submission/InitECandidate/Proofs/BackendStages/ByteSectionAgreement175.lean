import InitECandidate.Proofs.BackendStages.BytesData175
import InitECandidate.Proofs.BackendStages.BytePiecesData175
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section175_eq : ByteData.bytes175 = [piece175_0].flatten := by
  rw [piece175_0_eq]
  rfl
#print axioms section175_eq
end InitECandidate.Proofs.BackendStages.BytePieces
