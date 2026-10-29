import InitECandidate.Proofs.BackendStages.BytePiecesData154
import InitECandidate.Proofs.BackendStages.BytePiecesData155
import InitECandidate.Proofs.BackendStages.BytePiecesData156
import InitECandidate.Bytes020
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate020_eq : InitECandidate.bytes020 = [piece154_8, piece155_0, piece156_0].flatten := by
  rw [piece154_8_eq, piece155_0_eq, piece156_0_eq]
  rfl
#print axioms candidate020_eq
end InitECandidate.Proofs.BackendStages.BytePieces
