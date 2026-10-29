import InitECandidate.Proofs.BackendStages.BytesData329
import InitECandidate.Proofs.BackendStages.BytePiecesData329
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section329_eq : ByteData.bytes329 = [piece329_0].flatten := by
  rw [piece329_0_eq]
  rfl
#print axioms section329_eq
end InitECandidate.Proofs.BackendStages.BytePieces
