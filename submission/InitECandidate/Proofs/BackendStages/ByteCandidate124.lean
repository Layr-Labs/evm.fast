import InitECandidate.Proofs.BackendStages.BytePiecesData622
import InitECandidate.Proofs.BackendStages.BytePiecesData623
import InitECandidate.Bytes124
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate124_eq : InitECandidate.bytes124 = [piece622_1, piece623_0].flatten := by
  rw [piece622_1_eq, piece623_0_eq]
  rfl
#print axioms candidate124_eq
end InitECandidate.Proofs.BackendStages.BytePieces
