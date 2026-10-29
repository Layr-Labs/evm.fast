import InitECandidate.Proofs.BackendStages.BytePiecesData344
import InitECandidate.Proofs.BackendStages.BytePiecesData345
import InitECandidate.Bytes066
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate066_eq : InitECandidate.bytes066 = [piece344_1, piece345_0].flatten := by
  rw [piece344_1_eq, piece345_0_eq]
  rfl
#print axioms candidate066_eq
end InitECandidate.Proofs.BackendStages.BytePieces
