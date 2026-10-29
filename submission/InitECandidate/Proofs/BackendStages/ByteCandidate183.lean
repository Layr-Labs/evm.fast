import InitECandidate.Proofs.BackendStages.BytePiecesData752
import InitECandidate.Proofs.BackendStages.BytePiecesData753
import InitECandidate.Proofs.BackendStages.BytePiecesData754
import InitECandidate.Bytes183
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate183_eq : InitECandidate.bytes183 = [piece752_1, piece753_0, piece754_0].flatten := by
  rw [piece752_1_eq, piece753_0_eq, piece754_0_eq]
  rfl
#print axioms candidate183_eq
end InitECandidate.Proofs.BackendStages.BytePieces
