import InitECandidate.Proofs.BackendStages.BytesData496
import InitECandidate.Proofs.BackendStages.BytePiecesData496
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section496_eq : ByteData.bytes496 = [piece496_0].flatten := by
  rw [piece496_0_eq]
  rfl
#print axioms section496_eq
end InitECandidate.Proofs.BackendStages.BytePieces
