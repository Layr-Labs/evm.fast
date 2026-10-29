import InitECandidate.Proofs.BackendStages.BytePiecesData867
import InitECandidate.Proofs.BackendStages.BytePiecesData868
import InitECandidate.Bytes236
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate236_eq : InitECandidate.bytes236 = [piece867_1, piece868_0].flatten := by
  rw [piece867_1_eq, piece868_0_eq]
  rfl
#print axioms candidate236_eq
end InitECandidate.Proofs.BackendStages.BytePieces
