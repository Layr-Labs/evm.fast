import InitECandidate.Proofs.BackendStages.BytesData262
import InitECandidate.Proofs.BackendStages.BytePiecesData262
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section262_eq : ByteData.bytes262 = [piece262_0].flatten := by
  rw [piece262_0_eq]
  rfl
#print axioms section262_eq
end InitECandidate.Proofs.BackendStages.BytePieces
