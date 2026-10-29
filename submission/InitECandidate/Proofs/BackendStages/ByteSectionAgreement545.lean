import InitECandidate.Proofs.BackendStages.BytesData545
import InitECandidate.Proofs.BackendStages.BytePiecesData545
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section545_eq : ByteData.bytes545 = [piece545_0].flatten := by
  rw [piece545_0_eq]
  rfl
#print axioms section545_eq
end InitECandidate.Proofs.BackendStages.BytePieces
