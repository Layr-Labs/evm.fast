import InitECandidate.Proofs.BackendStages.BytePiecesData224
import InitECandidate.Bytes032
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate032_eq : InitECandidate.bytes032 = [piece224_1].flatten := by
  rw [piece224_1_eq]
  rfl
#print axioms candidate032_eq
end InitECandidate.Proofs.BackendStages.BytePieces
