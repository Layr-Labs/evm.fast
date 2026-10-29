import InitECandidate.Proofs.BackendStages.BytesData85
import InitECandidate.Proofs.BackendStages.BytePiecesData85
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section85_eq : ByteData.bytes85 = [piece85_0].flatten := by
  rw [piece85_0_eq]
  rfl
#print axioms section85_eq
end InitECandidate.Proofs.BackendStages.BytePieces
