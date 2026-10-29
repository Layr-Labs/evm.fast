import InitECandidate.Proofs.BackendStages.BytesData352
import InitECandidate.Proofs.BackendStages.BytePiecesData352
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section352_eq : ByteData.bytes352 = [piece352_0].flatten := by
  rw [piece352_0_eq]
  rfl
#print axioms section352_eq
end InitECandidate.Proofs.BackendStages.BytePieces
