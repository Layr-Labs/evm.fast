import InitECandidate.Proofs.BackendStages.BytePiecesData430
import InitECandidate.Proofs.BackendStages.BytePiecesData431
import InitECandidate.Proofs.BackendStages.BytePiecesData432
import InitECandidate.Proofs.BackendStages.BytePiecesData433
import InitECandidate.Proofs.BackendStages.BytePiecesData434
import InitECandidate.Proofs.BackendStages.BytePiecesData435
import InitECandidate.Proofs.BackendStages.BytePiecesData436
import InitECandidate.Bytes078
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate078_eq : InitECandidate.bytes078 = [piece430_1, piece431_0, piece432_0, piece433_0, piece434_0, piece435_0, piece436_0].flatten := by
  rw [piece430_1_eq, piece431_0_eq, piece432_0_eq, piece433_0_eq, piece434_0_eq, piece435_0_eq, piece436_0_eq]
  rfl
#print axioms candidate078_eq
end InitECandidate.Proofs.BackendStages.BytePieces
