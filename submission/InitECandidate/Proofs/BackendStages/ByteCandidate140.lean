import InitECandidate.Proofs.BackendStages.BytePiecesData655
import InitECandidate.Bytes140
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate140_eq : InitECandidate.bytes140 = [piece655_1].flatten := by
  rw [piece655_1_eq]
  rfl
#print axioms candidate140_eq
end InitECandidate.Proofs.BackendStages.BytePieces
