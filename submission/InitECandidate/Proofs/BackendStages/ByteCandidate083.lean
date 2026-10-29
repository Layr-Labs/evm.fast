import InitECandidate.Proofs.BackendStages.BytePiecesData457
import InitECandidate.Proofs.BackendStages.BytePiecesData458
import InitECandidate.Proofs.BackendStages.BytePiecesData459
import InitECandidate.Bytes083
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate083_eq : InitECandidate.bytes083 = [piece457_1, piece458_0, piece459_0].flatten := by
  rw [piece457_1_eq, piece458_0_eq, piece459_0_eq]
  rfl
#print axioms candidate083_eq
end InitECandidate.Proofs.BackendStages.BytePieces
