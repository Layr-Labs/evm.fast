import InitECandidate.Proofs.BackendStages.BytePiecesData543
import InitECandidate.Proofs.BackendStages.BytePiecesData544
import InitECandidate.Proofs.BackendStages.BytePiecesData545
import InitECandidate.Proofs.BackendStages.BytePiecesData546
import InitECandidate.Bytes098
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate098_eq : InitECandidate.bytes098 = [piece543_1, piece544_0, piece545_0, piece546_0].flatten := by
  rw [piece543_1_eq, piece544_0_eq, piece545_0_eq, piece546_0_eq]
  rfl
#print axioms candidate098_eq
end InitECandidate.Proofs.BackendStages.BytePieces
