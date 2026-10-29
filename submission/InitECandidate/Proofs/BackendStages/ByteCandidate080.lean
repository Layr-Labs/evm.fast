import InitECandidate.Proofs.BackendStages.BytePiecesData444
import InitECandidate.Proofs.BackendStages.BytePiecesData445
import InitECandidate.Proofs.BackendStages.BytePiecesData446
import InitECandidate.Proofs.BackendStages.BytePiecesData447
import InitECandidate.Proofs.BackendStages.BytePiecesData448
import InitECandidate.Proofs.BackendStages.BytePiecesData449
import InitECandidate.Proofs.BackendStages.BytePiecesData450
import InitECandidate.Bytes080
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate080_eq : InitECandidate.bytes080 = [piece444_1, piece445_0, piece446_0, piece447_0, piece448_0, piece449_0, piece450_0].flatten := by
  rw [piece444_1_eq, piece445_0_eq, piece446_0_eq, piece447_0_eq, piece448_0_eq, piece449_0_eq, piece450_0_eq]
  rfl
#print axioms candidate080_eq
end InitECandidate.Proofs.BackendStages.BytePieces
