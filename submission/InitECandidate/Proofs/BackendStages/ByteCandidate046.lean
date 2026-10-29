import InitECandidate.Proofs.BackendStages.BytePiecesData254
import InitECandidate.Proofs.BackendStages.BytePiecesData255
import InitECandidate.Proofs.BackendStages.BytePiecesData256
import InitECandidate.Bytes046
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate046_eq : InitECandidate.bytes046 = [piece254_1, piece255_0, piece256_0].flatten := by
  rw [piece254_1_eq, piece255_0_eq, piece256_0_eq]
  rfl
#print axioms candidate046_eq
end InitECandidate.Proofs.BackendStages.BytePieces
