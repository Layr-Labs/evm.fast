import InitECandidate.Proofs.BackendStages.BytePiecesData700
import InitECandidate.Proofs.BackendStages.BytePiecesData701
import InitECandidate.Proofs.BackendStages.BytePiecesData702
import InitECandidate.Proofs.BackendStages.BytePiecesData703
import InitECandidate.Proofs.BackendStages.BytePiecesData704
import InitECandidate.Bytes162
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate162_eq : InitECandidate.bytes162 = [piece700_2, piece701_0, piece702_0, piece703_0, piece704_0].flatten := by
  rw [piece700_2_eq, piece701_0_eq, piece702_0_eq, piece703_0_eq, piece704_0_eq]
  rfl
#print axioms candidate162_eq
end InitECandidate.Proofs.BackendStages.BytePieces
