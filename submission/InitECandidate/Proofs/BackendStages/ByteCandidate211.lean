import InitECandidate.Proofs.BackendStages.BytePiecesData805
import InitECandidate.Proofs.BackendStages.BytePiecesData806
import InitECandidate.Proofs.BackendStages.BytePiecesData807
import InitECandidate.Proofs.BackendStages.BytePiecesData808
import InitECandidate.Bytes211
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate211_eq : InitECandidate.bytes211 = [piece805_1, piece806_0, piece807_0, piece808_0].flatten := by
  rw [piece805_1_eq, piece806_0_eq, piece807_0_eq, piece808_0_eq]
  rfl
#print axioms candidate211_eq
end InitECandidate.Proofs.BackendStages.BytePieces
