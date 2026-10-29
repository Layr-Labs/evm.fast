import InitECandidate.Proofs.BackendStages.BytePiecesData225
import InitECandidate.Proofs.BackendStages.BytePiecesData226
import InitECandidate.Proofs.BackendStages.BytePiecesData227
import InitECandidate.Bytes035
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate035_eq : InitECandidate.bytes035 = [piece225_2, piece226_0, piece227_0].flatten := by
  rw [piece225_2_eq, piece226_0_eq, piece227_0_eq]
  rfl
#print axioms candidate035_eq
end InitECandidate.Proofs.BackendStages.BytePieces
