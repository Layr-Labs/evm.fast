import InitECandidate.Proofs.BackendStages.BytePiecesData206
import InitECandidate.Proofs.BackendStages.BytePiecesData207
import InitECandidate.Bytes027
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate027_eq : InitECandidate.bytes027 = [piece206_1, piece207_0].flatten := by
  rw [piece206_1_eq, piece207_0_eq]
  rfl
#print axioms candidate027_eq
end InitECandidate.Proofs.BackendStages.BytePieces
