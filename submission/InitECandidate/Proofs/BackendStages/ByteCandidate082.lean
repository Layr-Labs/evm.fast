import InitECandidate.Proofs.BackendStages.BytePiecesData454
import InitECandidate.Proofs.BackendStages.BytePiecesData455
import InitECandidate.Proofs.BackendStages.BytePiecesData456
import InitECandidate.Proofs.BackendStages.BytePiecesData457
import InitECandidate.Bytes082
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate082_eq : InitECandidate.bytes082 = [piece454_1, piece455_0, piece456_0, piece457_0].flatten := by
  rw [piece454_1_eq, piece455_0_eq, piece456_0_eq, piece457_0_eq]
  rfl
#print axioms candidate082_eq
end InitECandidate.Proofs.BackendStages.BytePieces
