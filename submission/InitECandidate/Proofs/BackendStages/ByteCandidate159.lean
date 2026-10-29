import InitECandidate.Proofs.BackendStages.BytePiecesData696
import InitECandidate.Proofs.BackendStages.BytePiecesData697
import InitECandidate.Bytes159
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate159_eq : InitECandidate.bytes159 = [piece696_1, piece697_0].flatten := by
  rw [piece696_1_eq, piece697_0_eq]
  rfl
#print axioms candidate159_eq
end InitECandidate.Proofs.BackendStages.BytePieces
