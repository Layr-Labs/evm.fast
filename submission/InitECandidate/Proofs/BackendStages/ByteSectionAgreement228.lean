import InitECandidate.Proofs.BackendStages.BytesData228
import InitECandidate.Proofs.BackendStages.BytePiecesData228
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section228_eq : ByteData.bytes228 = [piece228_0, piece228_1].flatten := by
  rw [piece228_0_eq, piece228_1_eq]
  rfl
#print axioms section228_eq
end InitECandidate.Proofs.BackendStages.BytePieces
