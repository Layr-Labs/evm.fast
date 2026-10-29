import InitECandidate.Proofs.BackendStages.BytePiecesData739
import InitECandidate.Proofs.BackendStages.BytePiecesData740
import InitECandidate.Proofs.BackendStages.BytePiecesData741
import InitECandidate.Bytes180
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate180_eq : InitECandidate.bytes180 = [piece739_1, piece740_0, piece741_0].flatten := by
  rw [piece739_1_eq, piece740_0_eq, piece741_0_eq]
  rfl
#print axioms candidate180_eq
end InitECandidate.Proofs.BackendStages.BytePieces
