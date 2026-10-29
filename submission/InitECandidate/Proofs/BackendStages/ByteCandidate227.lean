import InitECandidate.Proofs.BackendStages.BytePiecesData850
import InitECandidate.Proofs.BackendStages.BytePiecesData851
import InitECandidate.Proofs.BackendStages.BytePiecesData852
import InitECandidate.Bytes227
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate227_eq : InitECandidate.bytes227 = [piece850_2, piece851_0, piece852_0].flatten := by
  rw [piece850_2_eq, piece851_0_eq, piece852_0_eq]
  rfl
#print axioms candidate227_eq
end InitECandidate.Proofs.BackendStages.BytePieces
