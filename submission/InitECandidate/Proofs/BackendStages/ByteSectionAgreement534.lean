import InitECandidate.Proofs.BackendStages.BytesData534
import InitECandidate.Proofs.BackendStages.BytePiecesData534
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem section534_eq : ByteData.bytes534 = [piece534_0, piece534_1].flatten := by
  rw [piece534_0_eq, piece534_1_eq]
  rfl
#print axioms section534_eq
end InitECandidate.Proofs.BackendStages.BytePieces
