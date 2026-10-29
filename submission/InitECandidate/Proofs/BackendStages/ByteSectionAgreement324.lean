import InitECandidate.Proofs.BackendStages.BytesData324
import InitECandidate.Proofs.BackendStages.BytePiecesData324
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section324_eq : ByteData.bytes324 = [piece324_0].flatten := by
  rw [piece324_0_eq]
  rfl
#print axioms section324_eq
end InitECandidate.Proofs.BackendStages.BytePieces
