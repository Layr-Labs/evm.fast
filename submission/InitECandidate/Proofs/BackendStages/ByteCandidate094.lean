import InitECandidate.Proofs.BackendStages.BytePiecesData519
import InitECandidate.Proofs.BackendStages.BytePiecesData520
import InitECandidate.Proofs.BackendStages.BytePiecesData521
import InitECandidate.Proofs.BackendStages.BytePiecesData522
import InitECandidate.Proofs.BackendStages.BytePiecesData523
import InitECandidate.Bytes094
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate094_eq : InitECandidate.bytes094 = [piece519_1, piece520_0, piece521_0, piece522_0, piece523_0].flatten := by
  rw [piece519_1_eq, piece520_0_eq, piece521_0_eq, piece522_0_eq, piece523_0_eq]
  rfl
#print axioms candidate094_eq
end InitECandidate.Proofs.BackendStages.BytePieces
