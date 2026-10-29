import InitECandidate.Proofs.BackendStages.BytePiecesData863
import InitECandidate.Bytes232
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate232_eq : InitECandidate.bytes232 = [piece863_1].flatten := by
  rw [piece863_1_eq]
  rfl
#print axioms candidate232_eq
end InitECandidate.Proofs.BackendStages.BytePieces
