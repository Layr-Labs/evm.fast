import InitECandidate.Proofs.BackendStages.BytesData512
import InitECandidate.Proofs.BackendStages.BytePiecesData512
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section512_eq : ByteData.bytes512 = [piece512_0].flatten := by
  rw [piece512_0_eq]
  rfl
#print axioms section512_eq
end InitECandidate.Proofs.BackendStages.BytePieces
