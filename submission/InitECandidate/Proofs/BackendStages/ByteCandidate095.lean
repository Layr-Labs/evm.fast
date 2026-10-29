import InitECandidate.Proofs.BackendStages.BytePiecesData523
import InitECandidate.Proofs.BackendStages.BytePiecesData524
import InitECandidate.Proofs.BackendStages.BytePiecesData525
import InitECandidate.Proofs.BackendStages.BytePiecesData526
import InitECandidate.Proofs.BackendStages.BytePiecesData527
import InitECandidate.Proofs.BackendStages.BytePiecesData528
import InitECandidate.Proofs.BackendStages.BytePiecesData529
import InitECandidate.Proofs.BackendStages.BytePiecesData530
import InitECandidate.Bytes095
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate095_eq : InitECandidate.bytes095 = [piece523_1, piece524_0, piece525_0, piece526_0, piece527_0, piece528_0, piece529_0, piece530_0].flatten := by
  rw [piece523_1_eq, piece524_0_eq, piece525_0_eq, piece526_0_eq, piece527_0_eq, piece528_0_eq, piece529_0_eq, piece530_0_eq]
  rfl
#print axioms candidate095_eq
end InitECandidate.Proofs.BackendStages.BytePieces
