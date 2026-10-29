import InitECandidate.Proofs.BackendStages.BytePiecesData274
import InitECandidate.Proofs.BackendStages.BytePiecesData275
import InitECandidate.Proofs.BackendStages.BytePiecesData276
import InitECandidate.Bytes052
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate052_eq : InitECandidate.bytes052 = [piece274_1, piece275_0, piece276_0].flatten := by
  rw [piece274_1_eq, piece275_0_eq, piece276_0_eq]
  rfl
#print axioms candidate052_eq
end InitECandidate.Proofs.BackendStages.BytePieces
