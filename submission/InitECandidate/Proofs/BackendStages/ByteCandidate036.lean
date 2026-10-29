import InitECandidate.Proofs.BackendStages.BytePiecesData227
import InitECandidate.Proofs.BackendStages.BytePiecesData228
import InitECandidate.Bytes036
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate036_eq : InitECandidate.bytes036 = [piece227_1, piece228_0].flatten := by
  rw [piece227_1_eq, piece228_0_eq]
  rfl
#print axioms candidate036_eq
end InitECandidate.Proofs.BackendStages.BytePieces
