import InitECandidate.Proofs.BackendStages.BytePiecesData800
import InitECandidate.Proofs.BackendStages.BytePiecesData801
import InitECandidate.Bytes207
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate207_eq : InitECandidate.bytes207 = [piece800_1, piece801_0].flatten := by
  rw [piece800_1_eq, piece801_0_eq]
  rfl
#print axioms candidate207_eq
end InitECandidate.Proofs.BackendStages.BytePieces
