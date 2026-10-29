import InitECandidate.Proofs.BackendStages.BytesData444
import InitECandidate.Proofs.BackendStages.BytePiecesData444
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section444_eq : ByteData.bytes444 = [piece444_0, piece444_1].flatten := by
  rw [piece444_0_eq, piece444_1_eq]
  rfl
#print axioms section444_eq
end InitECandidate.Proofs.BackendStages.BytePieces
