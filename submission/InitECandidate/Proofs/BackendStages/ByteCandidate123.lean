import InitECandidate.Proofs.BackendStages.BytePiecesData621
import InitECandidate.Proofs.BackendStages.BytePiecesData622
import InitECandidate.Bytes123
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate123_eq : InitECandidate.bytes123 = [piece621_2, piece622_0].flatten := by
  rw [piece621_2_eq, piece622_0_eq]
  rfl
#print axioms candidate123_eq
end InitECandidate.Proofs.BackendStages.BytePieces
