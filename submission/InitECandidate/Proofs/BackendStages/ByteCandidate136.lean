import InitECandidate.Proofs.BackendStages.BytePiecesData650
import InitECandidate.Proofs.BackendStages.BytePiecesData651
import InitECandidate.Bytes136
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate136_eq : InitECandidate.bytes136 = [piece650_1, piece651_0].flatten := by
  rw [piece650_1_eq, piece651_0_eq]
  rfl
#print axioms candidate136_eq
end InitECandidate.Proofs.BackendStages.BytePieces
