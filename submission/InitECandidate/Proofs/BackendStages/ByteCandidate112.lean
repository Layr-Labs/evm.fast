import InitECandidate.Proofs.BackendStages.BytePiecesData595
import InitECandidate.Bytes112
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate112_eq : InitECandidate.bytes112 = [piece595_1].flatten := by
  rw [piece595_1_eq]
  rfl
#print axioms candidate112_eq
end InitECandidate.Proofs.BackendStages.BytePieces
