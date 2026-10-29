import InitECandidate.Proofs.BackendStages.BytePiecesData720
import InitECandidate.Proofs.BackendStages.BytePiecesData721
import InitECandidate.Proofs.BackendStages.BytePiecesData722
import InitECandidate.Bytes177
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate177_eq : InitECandidate.bytes177 = [piece720_1, piece721_0, piece722_0].flatten := by
  rw [piece720_1_eq, piece721_0_eq, piece722_0_eq]
  rfl
#print axioms candidate177_eq
end InitECandidate.Proofs.BackendStages.BytePieces
