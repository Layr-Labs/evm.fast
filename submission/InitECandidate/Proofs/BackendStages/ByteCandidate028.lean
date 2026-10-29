import InitECandidate.Proofs.BackendStages.BytePiecesData207
import InitECandidate.Proofs.BackendStages.BytePiecesData208
import InitECandidate.Bytes028
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate028_eq : InitECandidate.bytes028 = [piece207_1, piece208_0].flatten := by
  rw [piece207_1_eq, piece208_0_eq]
  rfl
#print axioms candidate028_eq
end InitECandidate.Proofs.BackendStages.BytePieces
