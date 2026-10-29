import InitECandidate.Proofs.BackendStages.BytePiecesData225
import InitECandidate.Bytes034
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate034_eq : InitECandidate.bytes034 = [piece225_1].flatten := by
  rw [piece225_1_eq]
  rfl
#print axioms candidate034_eq
end InitECandidate.Proofs.BackendStages.BytePieces
