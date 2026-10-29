import InitECandidate.Proofs.BackendStages.BytePiecesData514
import InitECandidate.Proofs.BackendStages.BytePiecesData515
import InitECandidate.Proofs.BackendStages.BytePiecesData516
import InitECandidate.Proofs.BackendStages.BytePiecesData517
import InitECandidate.Proofs.BackendStages.BytePiecesData518
import InitECandidate.Proofs.BackendStages.BytePiecesData519
import InitECandidate.Bytes093
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate093_eq : InitECandidate.bytes093 = [piece514_1, piece515_0, piece516_0, piece517_0, piece518_0, piece519_0].flatten := by
  rw [piece514_1_eq, piece515_0_eq, piece516_0_eq, piece517_0_eq, piece518_0_eq, piece519_0_eq]
  rfl
#print axioms candidate093_eq
end InitECandidate.Proofs.BackendStages.BytePieces
