import InitECandidate.Proofs.BackendStages.BytePiecesData848
import InitECandidate.Bytes224
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate224_eq : InitECandidate.bytes224 = [piece848_1].flatten := by
  rw [piece848_1_eq]
  rfl
#print axioms candidate224_eq
end InitECandidate.Proofs.BackendStages.BytePieces
