import InitECandidate.Proofs.BackendStages.BytePiecesData234
import InitECandidate.Bytes040
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate040_eq : InitECandidate.bytes040 = [piece234_1].flatten := by
  rw [piece234_1_eq]
  rfl
#print axioms candidate040_eq
end InitECandidate.Proofs.BackendStages.BytePieces
