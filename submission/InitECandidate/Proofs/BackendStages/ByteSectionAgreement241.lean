import InitECandidate.Proofs.BackendStages.BytesData241
import InitECandidate.Proofs.BackendStages.BytePiecesData241
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section241_eq : ByteData.bytes241 = [piece241_0].flatten := by
  rw [piece241_0_eq]
  rfl
#print axioms section241_eq
end InitECandidate.Proofs.BackendStages.BytePieces
