import InitECandidate.Proofs.BackendStages.BytePiecesData868
import InitECandidate.Proofs.BackendStages.BytePiecesData869
import InitECandidate.Bytes237
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate237_eq : InitECandidate.bytes237 = [piece868_1, piece869_0].flatten := by
  rw [piece868_1_eq, piece869_0_eq]
  rfl
#print axioms candidate237_eq
end InitECandidate.Proofs.BackendStages.BytePieces
