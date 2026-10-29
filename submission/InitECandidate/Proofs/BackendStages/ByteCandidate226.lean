import InitECandidate.Proofs.BackendStages.BytePiecesData850
import InitECandidate.Bytes226
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate226_eq : InitECandidate.bytes226 = [piece850_1].flatten := by
  rw [piece850_1_eq]
  rfl
#print axioms candidate226_eq
end InitECandidate.Proofs.BackendStages.BytePieces
