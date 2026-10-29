import InitECandidate.Proofs.BackendStages.BytesData163
import InitECandidate.Proofs.BackendStages.BytePiecesData163
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section163_eq : ByteData.bytes163 = [piece163_0].flatten := by
  rw [piece163_0_eq]
  rfl
#print axioms section163_eq
end InitECandidate.Proofs.BackendStages.BytePieces
