import InitECandidate.Proofs.BackendStages.BytePiecesData803
import InitECandidate.Proofs.BackendStages.BytePiecesData804
import InitECandidate.Proofs.BackendStages.BytePiecesData805
import InitECandidate.Bytes210
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate210_eq : InitECandidate.bytes210 = [piece803_1, piece804_0, piece805_0].flatten := by
  rw [piece803_1_eq, piece804_0_eq, piece805_0_eq]
  rfl
#print axioms candidate210_eq
end InitECandidate.Proofs.BackendStages.BytePieces
