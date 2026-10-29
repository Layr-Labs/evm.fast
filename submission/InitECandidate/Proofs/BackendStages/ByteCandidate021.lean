import InitECandidate.Proofs.BackendStages.BytePiecesData156
import InitECandidate.Proofs.BackendStages.BytePiecesData157
import InitECandidate.Proofs.BackendStages.BytePiecesData158
import InitECandidate.Proofs.BackendStages.BytePiecesData159
import InitECandidate.Proofs.BackendStages.BytePiecesData160
import InitECandidate.Proofs.BackendStages.BytePiecesData161
import InitECandidate.Bytes021
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate021_eq : InitECandidate.bytes021 = [piece156_1, piece157_0, piece158_0, piece159_0, piece160_0, piece161_0].flatten := by
  rw [piece156_1_eq, piece157_0_eq, piece158_0_eq, piece159_0_eq, piece160_0_eq, piece161_0_eq]
  rfl
#print axioms candidate021_eq
end InitECandidate.Proofs.BackendStages.BytePieces
