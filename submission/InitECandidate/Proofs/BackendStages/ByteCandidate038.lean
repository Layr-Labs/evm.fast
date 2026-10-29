import InitECandidate.Proofs.BackendStages.BytePiecesData231
import InitECandidate.Bytes038
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate038_eq : InitECandidate.bytes038 = [piece231_1].flatten := by
  rw [piece231_1_eq]
  rfl
#print axioms candidate038_eq
end InitECandidate.Proofs.BackendStages.BytePieces
