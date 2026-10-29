import InitECandidate.Proofs.BackendStages.BytePiecesData259
import InitECandidate.Proofs.BackendStages.BytePiecesData260
import InitECandidate.Proofs.BackendStages.BytePiecesData261
import InitECandidate.Bytes048
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate048_eq : InitECandidate.bytes048 = [piece259_1, piece260_0, piece261_0].flatten := by
  rw [piece259_1_eq, piece260_0_eq, piece261_0_eq]
  rfl
#print axioms candidate048_eq
end InitECandidate.Proofs.BackendStages.BytePieces
