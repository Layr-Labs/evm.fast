import InitECandidate.Proofs.BackendStages.BytesData445
import InitECandidate.Proofs.BackendStages.BytePiecesData445
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section445_eq : ByteData.bytes445 = [piece445_0].flatten := by
  rw [piece445_0_eq]
  rfl
#print axioms section445_eq
end InitECandidate.Proofs.BackendStages.BytePieces
