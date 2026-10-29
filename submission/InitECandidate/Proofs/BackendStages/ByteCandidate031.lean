import InitECandidate.Proofs.BackendStages.BytePiecesData223
import InitECandidate.Proofs.BackendStages.BytePiecesData224
import InitECandidate.Bytes031
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate031_eq : InitECandidate.bytes031 = [piece223_1, piece224_0].flatten := by
  rw [piece223_1_eq, piece224_0_eq]
  rfl
#print axioms candidate031_eq
end InitECandidate.Proofs.BackendStages.BytePieces
