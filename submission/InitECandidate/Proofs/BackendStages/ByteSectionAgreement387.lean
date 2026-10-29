import InitECandidate.Proofs.BackendStages.BytesData387
import InitECandidate.Proofs.BackendStages.BytePiecesData387
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section387_eq : ByteData.bytes387 = [piece387_0].flatten := by
  rw [piece387_0_eq]
  rfl
#print axioms section387_eq
end InitECandidate.Proofs.BackendStages.BytePieces
